import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'app.g.dart';

class App {
  final RequestLogger logger;
  App(this.logger) {
    logger.info('Initializing...');
  }
  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        logger.info('Exposed WebSocket');
        webSocket.sink.add('Hello, from the server!');
        logger.info('Sent initial message from socket');
        webSocket.stream.listen(
          (data) {
            logger.info('Received message from socket: $data');
            webSocket.sink.add('You said: $data');
          },
        );
      },
    );
    return wsHandler(request);
  }

  Router get router => _$AppRouter(this);
}
