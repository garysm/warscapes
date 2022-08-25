import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_network_connected_state.freezed.dart';

@freezed
class GameNetworkConnectedState with _$GameNetworkConnectedState {
  const factory GameNetworkConnectedState.loading() = _Loading;
  const factory GameNetworkConnectedState.connected(
      List<String> connectedClients) = _Connected;
  const factory GameNetworkConnectedState.disconnected() = _Disconnected;
  const factory GameNetworkConnectedState.error(String error) = _Error;
}
