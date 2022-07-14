import 'dart:async';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'app.g.dart';

class App {
  final Stdout logger;
  App(this.logger) {
    logger.writeln('Initialized App');
  }

  final _clients = <WebSocketChannel>[];

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        _clients.add(webSocket);
        logger.writeln('Exposed WebSocket');
        webSocket.sink.add('Hello, from the server!');
        logger.writeln('Sent initial message from socket');
        webSocket.stream.listen(
          (data) {
            logger.writeln('Received message from client: $data');

            for (var client in _clients) {
              client.sink.add('You said: $data');
              logger.writeln('Sent message "$data" back to client ${client}');
            }
          },
        );
      },
    );
    return wsHandler(request);
  }

  Handler get handler => _$AppRouter(this);
}
