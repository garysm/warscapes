import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:redis/redis.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:common/warscapes_api.dart';

part 'app.g.dart';

// TODO verify that new command is created every time this provider is called
final commandProvider = FutureProvider.family<Command, RedisConnection>(
  (ref, connection) async {
    final command = await connection.connect('redis', 6379);
    stdout.writeln('Connected to Redis');
    return command;
  },
);

final createPlayerCommandProvider =
    FutureProvider.family<void, WarscapesPlayer>(
  (ref, player) async {
    final connection = RedisConnection();
    final getCommand = await ref.watch(
      commandProvider(connection).future,
    );
    if (player.positionData != null) {
      var i = await getCommand.send_object(
        [
          'HSET',
          'players:${player.id}',
          'username',
          player.id,
          'x',
          '${player.positionData!.x}',
          'y',
          '${player.positionData!.y}',
        ],
      );
      stdout.writeln('Redis create player output: $i');
      // Create second connection to publish player created event
      final publishConnection = RedisConnection();
      final getPublishCommand = await ref.watch(
        commandProvider(publishConnection).future,
      );
      var j = await getPublishCommand
          .send_object(['PUBLISH', 'playerCreated', player.id]);
      stdout.writeln('Redis Publish output: $j');
      stdout.writeln('Created Player ${player.id} in Redis');
    }
  },
);

final movePlayerCommandProvider = FutureProvider.family<void, MoveData>(
  (ref, moveData) async {
    // First, check to make sure that the player has a different position
    final getPlayerConnection = RedisConnection();
    final command =
        await ref.watch(commandProvider(getPlayerConnection).future);
    final getPlayer =
        await command.send_object(['HGETALL', 'players:${moveData.playerId}']);
    final String? username = getPlayer[1] as String;
    final double? x = double.parse(getPlayer[3]);
    final double? y = double.parse(getPlayer[5]);
    if (username != null &&
        x != null &&
        y != null &&
        x != moveData.x &&
        y != moveData.y) {
      final connection = RedisConnection();
      final getCommand = await ref.watch(
        commandProvider(connection).future,
      );
      var i = await getCommand.send_object(
        [
          'HSET',
          'players:${moveData.playerId}',
          'x',
          '${moveData.x}',
          'y',
          '${moveData.y}',
        ],
      );
      stdout.writeln('Redis move player output: $i');
      // Create second connection to publish player moved event
      final publishConnection = RedisConnection();
      final getPublishCommand = await ref.watch(
        commandProvider(publishConnection).future,
      );
      var j = await getPublishCommand
          .send_object(['PUBLISH', 'playerMoved', moveData.playerId]);
      stdout.writeln('Redis Publish output: $j');
      stdout.writeln('Moved Player ${moveData.playerId} in Redis');
    }
  },
);

final mergedStreamProvider = StreamProvider<dynamic>(
  (ref) async* {
    final playerCreatedConnection = RedisConnection();
    final playerCreatedCommand =
        await ref.watch(commandProvider(playerCreatedConnection).future);
    final playerCreatedPubSub = PubSub(playerCreatedCommand);
    playerCreatedPubSub.subscribe(['playerCreated']);
    final playerCreatedStream = playerCreatedPubSub.getStream();
    stdout.writeln('Subscribed to channel playerCreated');
    final playerMovedConnection = RedisConnection();
    final playerMovedCommand =
        await ref.watch(commandProvider(playerMovedConnection).future);
    final playerMovedPubSub = PubSub(playerMovedCommand);
    playerMovedPubSub.subscribe(['playerMoved']);
    final playerMovedStream = playerMovedPubSub.getStream();
    stdout.writeln('Subscribed to channel playerMoved');
    final mergedStream =
        MergeStream<dynamic>([playerCreatedStream, playerMovedStream]);
    await for (final message in mergedStream) {
      yield message;
    }
  },
);

class App {
  final Stdout logger;
  final ProviderContainer _container;
  App(this.logger, this._container) {
    // Listen to Pub/Sub events
    _container.read(mergedStreamProvider.stream).listen(_handlePubSubEvents);
    logger.writeln('Initialized App');
  }

  final _clients = <WebSocketChannel, String?>{};

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) async {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        webSocket.stream.listen(
          (data) async {
            await Future.delayed(Duration(seconds: 1));
            logger.writeln('Received message: $data');
            if (data is String) {
              try {
                final json = jsonDecode(data);
                final gameMessage = GameMessage.fromJson(json);
                gameMessage.whenOrNull(
                  message: (String message) {},
                  createPlayer: (String username, double? initialX,
                      double? initialY) async {
                    final player = createPlayer(username);
                    _clients[webSocket] = player.id;
                    // Create player in redis
                    await _container
                        .read(createPlayerCommandProvider(player).future);
                  },
                  playerLeft: (WarscapesPlayer disconnectedPlayer) {
                    _clients.remove(webSocket);
                  },
                  playerIdle: (MoveData moveData) {},
                  playerMoved: (MoveData moveData) async {
                    await _container.read(
                      movePlayerCommandProvider(moveData).future,
                    );
                  },
                  playerShoot: (WarscapesPlayer playerShooter) {},
                );
              } on FormatException catch (e) {
                logger.writeln('String received is not a valid message');
              }
            }
          },
          onDone: () async {
            logger.writeln('Client #${_clients[webSocket]} disconnected');
            _clients.remove(webSocket);
          },
        );
      },
    );
    return wsHandler(request);
  }

  Handler get handler => _$AppRouter(this);

  WarscapesPlayer createPlayer(String username) {
    const double radius = 20.0;
    final int offset = radius.toInt();
    final x = Random().nextInt(kMapSize.toInt() - offset);
    final y = Random().nextInt(kMapSize.toInt() - offset);
    return WarscapesPlayer(
      id: username,
      positionData: PlayerPositionData(
        direction: 0.0,
        x: x.toDouble(),
        y: y.toDouble(),
      ),
    );
  }

  void sendMessageToPlayers(GameMessage message) {
    final json = message.toJson();
    final messageString = jsonEncode(json);
    for (WebSocketChannel client in _clients.keys) {
      client.sink.add(messageString);
      logger.writeln(
          'Message: $messageString. Sent to client #${_clients[client]}');
    }
  }

  void _handlePubSubEvents(dynamic message) async {
    stdout.writeln('PUBSUB Message: $message');
    final messageType = message[0];
    final channel = message[1];
    final value = message[2];
    if (messageType == 'message') {
      switch (channel) {
        case 'playerCreated':
          String playerId = value as String;
          if (playerId.isNotEmpty) {
            final connection = RedisConnection();
            final command =
                await _container.read(commandProvider(connection).future);
            final player =
                await command.send_object(['HGETALL', 'players:$value']);
            stdout.writeln('Got player from Redis: $player');
            final String? username = player[1] as String;
            final double? x = double.parse(player[3]);
            final double? y = double.parse(player[5]);
            if (username != null && x != null && y != null) {
              GameMessage createPlayerMessage = GameMessage.createPlayer(
                username: username,
                initialX: x,
                initialY: y,
              );
              sendMessageToPlayers(createPlayerMessage);
            }
          }
          break;
        case 'playerMoved':
          String playerId = value;
          if (playerId.isNotEmpty) {
            final connection = RedisConnection();
            final command =
                await _container.read(commandProvider(connection).future);
            final player =
                await command.send_object(['HGETALL', 'players:$value']);
            stdout.writeln('Got player from Redis: $player');
            final String? username = player[1] as String;
            final double? x = double.parse(player[3]);
            final double? y = double.parse(player[5]);
            if (username != null && x != null && y != null) {
              GameMessage createPlayerMessage = GameMessage.playerMoved(
                moveData: MoveData(
                  playerId: username,
                  // TODO: Handle direction changes
                  direction: 0.0,
                  x: x,
                  y: y,
                ),
              );
              sendMessageToPlayers(createPlayerMessage);
            }
          }
          break;
        default:
      }
    }
  }

  static const double kMapSize = 500;
}
