import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

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
                    final playerJoinMessage = GameMessage.createPlayer(
                      username: player.id,
                      initialX: player.positionData!.x,
                      initialY: player.positionData!.y,
                    );
                    sendMessageToPlayers(playerJoinMessage);
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
    for (WebSocketChannel client in _players) {
      client.sink.add(messageString);
      logger.writeln(
          'Message: $messageString. Sent to client #${_players.indexOf(client)}');
    }
  }
}

const double kMapSize = 500;
const double speed = 300;
