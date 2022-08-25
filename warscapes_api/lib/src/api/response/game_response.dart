import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_response.freezed.dart';
part 'game_response.g.dart';

@Freezed(unionKey: 'requestType', unionValueCase: FreezedUnionCase.kebab)
class GameResponse with _$GameResponse {
  const factory GameResponse.getClients(String clientId,
      {required List<String> connectedClients}) = _GetClients;
  const factory GameResponse.movePlayer(String clientId,
      {required int x, required int y}) = _MovePlayer;

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
}
