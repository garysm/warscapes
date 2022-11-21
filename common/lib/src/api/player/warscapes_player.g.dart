// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warscapes_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarscapesPlayer _$$_WarscapesPlayerFromJson(Map<String, dynamic> json) =>
    _$_WarscapesPlayer(
      id: json['id'] as int,
      name: json['name'] as String,
      movementData: json['movementData'] == null
          ? null
          : PlayerMovementData.fromJson(
              json['movementData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WarscapesPlayerToJson(_$_WarscapesPlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'movementData': instance.movementData?.toJson(),
    };

_$_PlayerMovementData _$$_PlayerMovementDataFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerMovementData(
      direction: (json['direction'] as num).toDouble(),
      position:
          const VectorConverter().fromJson(json['position'] as List<double>),
    );

Map<String, dynamic> _$$_PlayerMovementDataToJson(
        _$_PlayerMovementData instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'position': const VectorConverter().toJson(instance.position),
    };
