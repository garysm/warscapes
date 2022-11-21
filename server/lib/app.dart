import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:common/warscapes_api.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'app.g.dart';

class App {
  final Stdout logger;
  late final Uuid uuid;
  App(this.logger) {
    uuid = Uuid();
    logger.writeln('Initialized App');
  }

  final _clients = <String, WebSocketChannel>{};

  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, client!');
  }

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {
        final clientId = uuid.v4();
        _clients[clientId] = webSocket;
        logger.writeln('Client connected: $clientId');
        // webSocket.sink.add('Hello, from the server!');
        logger.writeln('Sent initial message from socket to client: $clientId');
        _clients.forEach(
          (String id, WebSocketChannel client) {
            final response = GameResponse.getClients(
              id,
              connectedClients: _clients.keys.toList(),
            );
            client.sink.add(jsonEncode(response.toJson()));
          },
        );
        webSocket.stream.listen(
          (data) {
            logger.writeln(
                'Received message from client with id "$clientId": $data');
            _clients.forEach(
              (String id, WebSocketChannel client) {
                // client.sink.add('Client with ID "$clientId": $data');
                logger.writeln(
                    'Sent message "$data" from client with id "$clientId" to client with id "$id"');
              },
            );
          },
        );
      },
    );
    return wsHandler(request);
  }

  Handler get handler => _$AppRouter(this);
}
