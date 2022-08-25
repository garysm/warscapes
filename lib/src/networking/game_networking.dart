import 'dart:async';
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:warscapes/src/model/game_network_connected_state.dart';
import 'package:warscapes_api/warscapes_api.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

final gameNetworkingProvider = StateNotifierProvider.autoDispose<GameNetworking,
    GameNetworkConnectedState>(
  (ref) => GameNetworking(),
);

class GameNetworking extends StateNotifier<GameNetworkConnectedState> {
  final _channel = IOWebSocketChannel.connect('ws://localhost:8080/ws');

  StreamSubscription<GameResponse?>? _socketSubscription;

  GameNetworking() : super(const GameNetworkConnectedState.loading()) {
    _init();
  }

  _init() async {
    await _socketSubscription?.cancel();
    _socketSubscription = null;
    _socketSubscription = responseStream().listen(
      _onMessageReceived,
      onDone: () {
        // TODO handle disconnection, attempt to reconnect etc.
        state = const GameNetworkConnectedState.disconnected();
      },
    );
  }

  Future<void> retry() async {
    await _init();
  }

  Stream<GameResponse> responseStream() {
    late StreamController<GameResponse> controller;
    controller = BehaviorSubject();
    controller.addStream(
      _channel.stream.map(
        (data) => GameResponse.fromJson(jsonDecode(data)),
      ),
    );
    return controller.stream;
  }

  void _onMessageReceived(GameResponse response) {
    response.maybeWhen(
        getClients: (String clientId, List<String> connectedClients) {
      state = GameNetworkConnectedState.connected(connectedClients);
    }, orElse: () {/* TODO */});
  }

  @override
  void dispose() async {
    await _socketSubscription?.cancel();
    _channel.sink.close(status.goingAway);
    state = const GameNetworkConnectedState.disconnected();
    super.dispose();
  }
}
