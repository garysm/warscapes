import 'dart:async';
import 'dart:convert';

import 'package:common/warscapes_api.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

final _socketProvider = Provider(
  (ref) {
    final socket = IOWebSocketChannel.connect('ws://localhost:8080/ws');
    ref.onDispose(
      () async {
        await socket.sink.close(status.goingAway);
      },
    );
    return socket;
  },
);

final networkingManagerProvider = ChangeNotifierProvider(
  (ref) => GameNetworkingManager(
    ref.watch(_socketProvider),
  ),
);

class GameNetworkingManager with ChangeNotifier {
  final IOWebSocketChannel _socket;
  late StreamSubscription _socketSubscription;

  GameNetworkingManager(this._socket) {
    _init();
  }

  void _init() {
    _socketSubscription = _socket.stream.listen(_handleMessage);
  }

  _handleMessage(dynamic message) {
    print(message);
  }

  void joinGame() {
    _socket.sink.add(
      jsonEncode(const GameMessage.createPlayer(username: 'test1').toJson()),
    );
  }

  @override
  Future<void> dispose() async {
    await _socketSubscription.cancel();
    super.dispose();
  }
}
