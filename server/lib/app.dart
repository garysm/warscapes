import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:uuid/uuid.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:common/warscapes_api.dart';

part 'app.g.dart';

class App {
  final Stdout logger;
  late final Uuid uuid;
  App(this.logger) {
    uuid = Uuid();
    logger.writeln('Initialized App');
  }

  final _players = <WebSocketChannel>[];

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        _players.add(webSocket);
        webSocket.stream.listen(
          (data) {
            logger.writeln('Received message: $data');
            if (data is String) {
              try {
                final json = jsonDecode(data);
                final gameMessage = GameMessage.fromJson(json);
                gameMessage.maybeWhen(
                  message: (String message) {},
                  createPlayer: (String username) {
                    final playerJoinMessage = GameMessage.playerJoined(
                      newPlayer: createPlayer(username),
                    );
                    sendMessageToPlayers(playerJoinMessage);
                  },
                  playerMoved: (MoveData moveData) {},
                  playerShoot: (WarscapesPlayer playerShooter) {},
                  orElse: () {
                    return;
                  },
                );
              } on FormatException catch (e) {
                logger.writeln('String received is not a valid message');
              }
            }
          },
          onDone: () {
            logger
                .writeln('Client #${_players.indexOf(webSocket)} disconnected');
            _players.remove(webSocket);
            // sendMessageToPlayers(GameMessage.playerLeft(disconnectedPlayer: WarscapesPlayer(id: id, name: name)));
          },
        );
      },
    );
    return wsHandler(request);
  }

  Handler get handler => _$AppRouter(this);

  WarscapesPlayer createPlayer(String username) {
    return WarscapesPlayer(
      id: _players.length,
      name: username,
      movementData: PlayerMovementData(
        direction: 0.0,
        position: Vector2(0, 0),
      ),
    );
  }

  void sendMessageToPlayers(GameMessage message) {
    final json = message.toJson();
    final messageString = jsonEncode(json);
    for (WebSocketChannel client in _players) {
      client.sink.add(messageString);
      logger.writeln(
          'Message: $messageString. Sent to client #${_players.indexOf(client)}');
    }
  }
}
