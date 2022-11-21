// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetClients _$$_GetClientsFromJson(Map<String, dynamic> json) =>
    _$_GetClients(
      json['clientId'] as String,
      connectedClients: (json['connectedClients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['requestType'] as String?,
    );

Map<String, dynamic> _$$_GetClientsToJson(_$_GetClients instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'connectedClients': instance.connectedClients,
      'requestType': instance.$type,
    };

_$_MovePlayer _$$_MovePlayerFromJson(Map<String, dynamic> json) =>
    _$_MovePlayer(
      json['clientId'] as String,
      x: json['x'] as int,
      y: json['y'] as int,
      $type: json['requestType'] as String?,
    );

Map<String, dynamic> _$$_MovePlayerToJson(_$_MovePlayer instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'x': instance.x,
      'y': instance.y,
      'requestType': instance.$type,
    };
