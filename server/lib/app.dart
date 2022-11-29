import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:redis/redis.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:common/warscapes_api.dart';

part 'app.g.dart';

// TODO verify that new command is created every time this provider is called
final commandProvider = FutureProvider.family<Command, RedisConnection>(
  (ref, connection) async {
    return await connection.connect('redis', 6379);
  },
);

// final createPlayerCommandProvider =
//     FutureProvider.family<void, WarscapesPlayer>(
//   (ref, player) async {
//     final connection = RedisConnection();
//     final getCommand = await ref.watch(
//       commandProvider(connection).future,
//     );
//     await getCommand.multi().then((transaction) {
//       transaction.send_object(['HMSET ${player.id}', 'username', player.id]);
//       transaction
//           .send_object(['HMSET ${player.id}', 'x', player.positionData!.x]);
//     });
//   },
// );

class App {
  final Stdout logger;
  final ProviderContainer container;
  App(this.logger, this.container) {
    logger.writeln('Initialized App');
  }

  final _players = <WebSocketChannel, String?>{};

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) async {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        _players[webSocket] = null;
        webSocket.stream.listen(
          (data) {
            logger.writeln('Received message: $data');
            if (data is String) {
              try {
                final json = jsonDecode(data);
                final gameMessage = GameMessage.fromJson(json);
                gameMessage.whenOrNull(
                  message: (String message) {},
                  createPlayer:
                      (String username, double? initialX, double? initialY) {
                    final player = createPlayer(username);
                    _players[webSocket] = player.id;
                    final playerJoinMessage = GameMessage.createPlayer(
                      username: player.id,
                      initialX: player.positionData!.x,
                      initialY: player.positionData!.y,
                    );
                    sendMessageToPlayers(playerJoinMessage);
                    // sendAllPlayersToNewPlayer(webSocket);
                  },
                  playerLeft: (WarscapesPlayer disconnectedPlayer) {
                    _players.remove(webSocket);
                  },
                  playerIdle: (MoveData moveData) {},
                  playerMoved: (MoveData moveData) {
                    sendMessageToPlayers(
                      GameMessage.playerMoved(moveData: moveData),
                    );
                  },
                  playerShoot: (WarscapesPlayer playerShooter) {},
                );
              } on FormatException catch (e) {
                logger.writeln('String received is not a valid message');
              }
            }
          },
          onDone: () {
            logger.writeln('Client #${_players[webSocket]} disconnected');
            _players.remove(webSocket);
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

// void sendAllPlayersToNewPlayer(WebSocketChannel socket){
//   for (final WebSocketChannel client in _players.keys) {
//     final player = _players[client];
//     final message = GameMessage.createPlayer(username: )
//     final json = message.toJson();
//     final messageString = jsonEncode(json);
//   }
// }
  void sendMessageToPlayers(GameMessage message) {
    final json = message.toJson();
    final messageString = jsonEncode(json);
    for (WebSocketChannel client in _players.keys) {
      client.sink.add(messageString);
      logger.writeln(
          'Message: $messageString. Sent to client #${_players[client]}');
    }
  }
}

const double kMapSize = 500;
const double speed = 300;
