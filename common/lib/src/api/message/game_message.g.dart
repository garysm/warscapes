// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Message _$$MessageFromJson(Map<String, dynamic> json) => _$Message(
      json['message'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageToJson(_$Message instance) => <String, dynamic>{
      'message': instance.message,
      'type': instance.$type,
    };

_$PlayerMoved _$$PlayerMovedFromJson(Map<String, dynamic> json) =>
    _$PlayerMoved(
      moveData: MoveData.fromJson(json['moveData'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayerMovedToJson(_$PlayerMoved instance) =>
    <String, dynamic>{
      'moveData': instance.moveData.toJson(),
      'type': instance.$type,
    };

_$PlayerIdle _$$PlayerIdleFromJson(Map<String, dynamic> json) => _$PlayerIdle(
      moveData: MoveData.fromJson(json['moveData'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayerIdleToJson(_$PlayerIdle instance) =>
    <String, dynamic>{
      'moveData': instance.moveData.toJson(),
      'type': instance.$type,
    };

_$PlayerJoined _$$PlayerJoinedFromJson(Map<String, dynamic> json) =>
    _$PlayerJoined(
      newPlayer:
          WarscapesPlayer.fromJson(json['newPlayer'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayerJoinedToJson(_$PlayerJoined instance) =>
    <String, dynamic>{
      'newPlayer': instance.newPlayer.toJson(),
      'type': instance.$type,
    };

_$PlayerLeft _$$PlayerLeftFromJson(Map<String, dynamic> json) => _$PlayerLeft(
      disconnectedPlayer: WarscapesPlayer.fromJson(
          json['disconnectedPlayer'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayerLeftToJson(_$PlayerLeft instance) =>
    <String, dynamic>{
      'disconnectedPlayer': instance.disconnectedPlayer.toJson(),
      'type': instance.$type,
    };

_$PlayerShoot _$$PlayerShootFromJson(Map<String, dynamic> json) =>
    _$PlayerShoot(
      playerShooter: WarscapesPlayer.fromJson(
          json['playerShooter'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PlayerShootToJson(_$PlayerShoot instance) =>
    <String, dynamic>{
      'playerShooter': instance.playerShooter.toJson(),
      'type': instance.$type,
    };

_$CreatePlayer _$$CreatePlayerFromJson(Map<String, dynamic> json) =>
    _$CreatePlayer(
      username: json['username'] as String,
      initialX: (json['initialX'] as num?)?.toDouble(),
      initialY: (json['initialY'] as num?)?.toDouble(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CreatePlayerToJson(_$CreatePlayer instance) =>
    <String, dynamic>{
      'username': instance.username,
      'initialX': instance.initialX,
      'initialY': instance.initialY,
      'type': instance.$type,
    };

_$_MoveData _$$_MoveDataFromJson(Map<String, dynamic> json) => _$_MoveData(
      playerId: json['playerId'] as int,
      direction: (json['direction'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MoveDataToJson(_$_MoveData instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'direction': instance.direction,
      'x': instance.x,
      'y': instance.y,
    };
