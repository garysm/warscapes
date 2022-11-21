import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_request.freezed.dart';
part 'game_request.g.dart';

@Freezed(unionKey: 'requestType', unionValueCase: FreezedUnionCase.kebab)
class GameRequest with _$GameRequest {
  const factory GameRequest.movePlayer(String clientId,
      {required int x, required int y}) = _MovePlayer;

  factory GameRequest.fromJson(Map<String, dynamic> json) =>
      _$GameRequestFromJson(json);
}
