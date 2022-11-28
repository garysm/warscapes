import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:common/warscapes_api.dart';

part 'app.g.dart';

class App {
  final Stdout logger;
  App(this.logger) {
    logger.writeln('Initialized App');
  }

  final _players = <WebSocketChannel>[];

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) async {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        _players.add(webSocket);
        sendMessageToPlayers(GameMessage.createPlayer(
            username: '${_players.indexOf(webSocket)}'));
        webSocket.stream.listen(
          (data) {
            logger.writeln('Received message: $data');
            if (data is String) {
              try {
                final json = jsonDecode(data);
                final gameMessage = GameMessage.fromJson(json);
                gameMessage.whenOrNull(
                  message: (String message) {},
                  createPlayer: (String username) {
                    final playerJoinMessage = GameMessage.playerJoined(
                      newPlayer: createPlayer(username),
                    );
                    sendMessageToPlayers(playerJoinMessage);
                  },
                  playerMoved: (MoveData moveData) {},
                  playerShoot: (WarscapesPlayer playerShooter) {},
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
      positionData: PlayerPositionData(
        direction: 0.0,
        x: 0.0,
        y: 0.0,
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
