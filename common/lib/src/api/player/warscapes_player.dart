import 'package:freezed_annotation/freezed_annotation.dart';

part 'warscapes_player.freezed.dart';
part 'warscapes_player.g.dart';

@freezed
class WarscapesPlayer with _$WarscapesPlayer {
  const factory WarscapesPlayer({
    required int id,
    required String name,
    PlayerPositionData? positionData,
  }) = _WarscapesPlayer;

  factory WarscapesPlayer.fromJson(Map<String, dynamic> json) =>
      _$WarscapesPlayerFromJson(json);
}

@freezed
class PlayerPositionData with _$PlayerPositionData {
  const factory PlayerPositionData({
    required double direction,
    required double x,
    required double y,
  }) = _PlayerPositionData;

  factory PlayerPositionData.fromJson(Map<String, dynamic> json) =>
      _$PlayerPositionDataFromJson(json);
}
