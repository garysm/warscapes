import 'package:common/src/api/player/warscapes_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math_64.dart';

part 'game_message.freezed.dart';
part 'game_message.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.screamingSnake)
class GameMessage with _$GameMessage {
  const factory GameMessage.message(String message) = Message;
  const factory GameMessage.playerMoved({
    required MoveData moveData,
  }) = PlayerMoved;
  const factory GameMessage.playerJoined({
    required WarscapesPlayer newPlayer,
  }) = PlayerJoined;
  const factory GameMessage.playerLeft({
    required WarscapesPlayer disconnectedPlayer,
  }) = PlayerLeft;
  const factory GameMessage.playerShoot({
    required WarscapesPlayer playerShooter,
  }) = PlayerShoot;
  const factory GameMessage.createPlayer({
    required String username,
  }) = CreatePlayer;

  factory GameMessage.fromJson(Map<String, dynamic> json) =>
      _$GameMessageFromJson(json);
}

@freezed
class MoveData with _$MoveData {
  const factory MoveData({
    required int playerId,
    required double direction,
    @VectorConverter() required Vector2 newPosition,
  }) = _MoveData;

  factory MoveData.fromJson(Map<String, dynamic> json) =>
      _$MoveDataFromJson(json);
}
