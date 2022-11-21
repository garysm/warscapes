import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math_64.dart';

part 'warscapes_player.freezed.dart';
part 'warscapes_player.g.dart';

@freezed
class WarscapesPlayer with _$WarscapesPlayer {
  const factory WarscapesPlayer({
    required int id,
    required String name,
    PlayerMovementData? movementData,
  }) = _WarscapesPlayer;

  factory WarscapesPlayer.fromJson(Map<String, dynamic> json) =>
      _$WarscapesPlayerFromJson(json);
}

@freezed
class PlayerMovementData with _$PlayerMovementData {
  const factory PlayerMovementData({
    required double direction,
    @VectorConverter() required Vector2 position,
  }) = _PlayerMovementData;

  factory PlayerMovementData.fromJson(Map<String, dynamic> json) =>
      _$PlayerMovementDataFromJson(json);
}

class VectorConverter implements JsonConverter<Vector2, List<double>> {
  const VectorConverter();

  @override
  Vector2 fromJson(List<double> json) {
    final Float64List storage = Float64List.fromList(json);
    return Vector2.fromFloat64List(storage);
  }

  @override
  List<double> toJson(Vector2 object) {
    return object.storage.toList();
  }
}
