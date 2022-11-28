// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warscapes_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarscapesPlayer _$$_WarscapesPlayerFromJson(Map<String, dynamic> json) =>
    _$_WarscapesPlayer(
      id: json['id'] as int,
      name: json['name'] as String,
      positionData: json['positionData'] == null
          ? null
          : PlayerPositionData.fromJson(
              json['positionData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WarscapesPlayerToJson(_$_WarscapesPlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'positionData': instance.positionData?.toJson(),
    };

_$_PlayerPositionData _$$_PlayerPositionDataFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerPositionData(
      direction: (json['direction'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PlayerPositionDataToJson(
        _$_PlayerPositionData instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'x': instance.x,
      'y': instance.y,
    };
