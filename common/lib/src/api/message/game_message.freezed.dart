// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameMessage _$GameMessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'MESSAGE':
      return Message.fromJson(json);
    case 'PLAYER_MOVED':
      return PlayerMoved.fromJson(json);
    case 'PLAYER_JOINED':
      return PlayerJoined.fromJson(json);
    case 'PLAYER_LEFT':
      return PlayerLeft.fromJson(json);
    case 'PLAYER_SHOOT':
      return PlayerShoot.fromJson(json);
    case 'CREATE_PLAYER':
      return CreatePlayer.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'GameMessage', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$GameMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMessageCopyWith<$Res> {
  factory $GameMessageCopyWith(
          GameMessage value, $Res Function(GameMessage) then) =
      _$GameMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameMessageCopyWithImpl<$Res> implements $GameMessageCopyWith<$Res> {
  _$GameMessageCopyWithImpl(this._value, this._then);

  final GameMessage _value;
  // ignore: unused_field
  final $Res Function(GameMessage) _then;
}

/// @nodoc
abstract class _$$MessageCopyWith<$Res> {
  factory _$$MessageCopyWith(_$Message value, $Res Function(_$Message) then) =
      __$$MessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$MessageCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$MessageCopyWith<$Res> {
  __$$MessageCopyWithImpl(_$Message _value, $Res Function(_$Message) _then)
      : super(_value, (v) => _then(v as _$Message));

  @override
  _$Message get _value => super._value as _$Message;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Message(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Message implements Message {
  const _$Message(this.message, {final String? $type})
      : $type = $type ?? 'MESSAGE';

  factory _$Message.fromJson(Map<String, dynamic> json) =>
      _$$MessageFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Message &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$MessageCopyWith<_$Message> get copyWith =>
      __$$MessageCopyWithImpl<_$Message>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageToJson(
      this,
    );
  }
}

abstract class Message implements GameMessage {
  const factory Message(final String message) = _$Message;

  factory Message.fromJson(Map<String, dynamic> json) = _$Message.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$MessageCopyWith<_$Message> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerMovedCopyWith<$Res> {
  factory _$$PlayerMovedCopyWith(
          _$PlayerMoved value, $Res Function(_$PlayerMoved) then) =
      __$$PlayerMovedCopyWithImpl<$Res>;
  $Res call({MoveData moveData});

  $MoveDataCopyWith<$Res> get moveData;
}

/// @nodoc
class __$$PlayerMovedCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$PlayerMovedCopyWith<$Res> {
  __$$PlayerMovedCopyWithImpl(
      _$PlayerMoved _value, $Res Function(_$PlayerMoved) _then)
      : super(_value, (v) => _then(v as _$PlayerMoved));

  @override
  _$PlayerMoved get _value => super._value as _$PlayerMoved;

  @override
  $Res call({
    Object? moveData = freezed,
  }) {
    return _then(_$PlayerMoved(
      moveData: moveData == freezed
          ? _value.moveData
          : moveData // ignore: cast_nullable_to_non_nullable
              as MoveData,
    ));
  }

  @override
  $MoveDataCopyWith<$Res> get moveData {
    return $MoveDataCopyWith<$Res>(_value.moveData, (value) {
      return _then(_value.copyWith(moveData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerMoved implements PlayerMoved {
  const _$PlayerMoved({required this.moveData, final String? $type})
      : $type = $type ?? 'PLAYER_MOVED';

  factory _$PlayerMoved.fromJson(Map<String, dynamic> json) =>
      _$$PlayerMovedFromJson(json);

  @override
  final MoveData moveData;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.playerMoved(moveData: $moveData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerMoved &&
            const DeepCollectionEquality().equals(other.moveData, moveData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(moveData));

  @JsonKey(ignore: true)
  @override
  _$$PlayerMovedCopyWith<_$PlayerMoved> get copyWith =>
      __$$PlayerMovedCopyWithImpl<_$PlayerMoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return playerMoved(moveData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return playerMoved?.call(moveData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerMoved != null) {
      return playerMoved(moveData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return playerMoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return playerMoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerMoved != null) {
      return playerMoved(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerMovedToJson(
      this,
    );
  }
}

abstract class PlayerMoved implements GameMessage {
  const factory PlayerMoved({required final MoveData moveData}) = _$PlayerMoved;

  factory PlayerMoved.fromJson(Map<String, dynamic> json) =
      _$PlayerMoved.fromJson;

  MoveData get moveData;
  @JsonKey(ignore: true)
  _$$PlayerMovedCopyWith<_$PlayerMoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerJoinedCopyWith<$Res> {
  factory _$$PlayerJoinedCopyWith(
          _$PlayerJoined value, $Res Function(_$PlayerJoined) then) =
      __$$PlayerJoinedCopyWithImpl<$Res>;
  $Res call({WarscapesPlayer newPlayer});

  $WarscapesPlayerCopyWith<$Res> get newPlayer;
}

/// @nodoc
class __$$PlayerJoinedCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$PlayerJoinedCopyWith<$Res> {
  __$$PlayerJoinedCopyWithImpl(
      _$PlayerJoined _value, $Res Function(_$PlayerJoined) _then)
      : super(_value, (v) => _then(v as _$PlayerJoined));

  @override
  _$PlayerJoined get _value => super._value as _$PlayerJoined;

  @override
  $Res call({
    Object? newPlayer = freezed,
  }) {
    return _then(_$PlayerJoined(
      newPlayer: newPlayer == freezed
          ? _value.newPlayer
          : newPlayer // ignore: cast_nullable_to_non_nullable
              as WarscapesPlayer,
    ));
  }

  @override
  $WarscapesPlayerCopyWith<$Res> get newPlayer {
    return $WarscapesPlayerCopyWith<$Res>(_value.newPlayer, (value) {
      return _then(_value.copyWith(newPlayer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerJoined implements PlayerJoined {
  const _$PlayerJoined({required this.newPlayer, final String? $type})
      : $type = $type ?? 'PLAYER_JOINED';

  factory _$PlayerJoined.fromJson(Map<String, dynamic> json) =>
      _$$PlayerJoinedFromJson(json);

  @override
  final WarscapesPlayer newPlayer;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.playerJoined(newPlayer: $newPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerJoined &&
            const DeepCollectionEquality().equals(other.newPlayer, newPlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newPlayer));

  @JsonKey(ignore: true)
  @override
  _$$PlayerJoinedCopyWith<_$PlayerJoined> get copyWith =>
      __$$PlayerJoinedCopyWithImpl<_$PlayerJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return playerJoined(newPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return playerJoined?.call(newPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerJoined != null) {
      return playerJoined(newPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return playerJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return playerJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerJoined != null) {
      return playerJoined(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerJoinedToJson(
      this,
    );
  }
}

abstract class PlayerJoined implements GameMessage {
  const factory PlayerJoined({required final WarscapesPlayer newPlayer}) =
      _$PlayerJoined;

  factory PlayerJoined.fromJson(Map<String, dynamic> json) =
      _$PlayerJoined.fromJson;

  WarscapesPlayer get newPlayer;
  @JsonKey(ignore: true)
  _$$PlayerJoinedCopyWith<_$PlayerJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerLeftCopyWith<$Res> {
  factory _$$PlayerLeftCopyWith(
          _$PlayerLeft value, $Res Function(_$PlayerLeft) then) =
      __$$PlayerLeftCopyWithImpl<$Res>;
  $Res call({WarscapesPlayer disconnectedPlayer});

  $WarscapesPlayerCopyWith<$Res> get disconnectedPlayer;
}

/// @nodoc
class __$$PlayerLeftCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$PlayerLeftCopyWith<$Res> {
  __$$PlayerLeftCopyWithImpl(
      _$PlayerLeft _value, $Res Function(_$PlayerLeft) _then)
      : super(_value, (v) => _then(v as _$PlayerLeft));

  @override
  _$PlayerLeft get _value => super._value as _$PlayerLeft;

  @override
  $Res call({
    Object? disconnectedPlayer = freezed,
  }) {
    return _then(_$PlayerLeft(
      disconnectedPlayer: disconnectedPlayer == freezed
          ? _value.disconnectedPlayer
          : disconnectedPlayer // ignore: cast_nullable_to_non_nullable
              as WarscapesPlayer,
    ));
  }

  @override
  $WarscapesPlayerCopyWith<$Res> get disconnectedPlayer {
    return $WarscapesPlayerCopyWith<$Res>(_value.disconnectedPlayer, (value) {
      return _then(_value.copyWith(disconnectedPlayer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerLeft implements PlayerLeft {
  const _$PlayerLeft({required this.disconnectedPlayer, final String? $type})
      : $type = $type ?? 'PLAYER_LEFT';

  factory _$PlayerLeft.fromJson(Map<String, dynamic> json) =>
      _$$PlayerLeftFromJson(json);

  @override
  final WarscapesPlayer disconnectedPlayer;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.playerLeft(disconnectedPlayer: $disconnectedPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerLeft &&
            const DeepCollectionEquality()
                .equals(other.disconnectedPlayer, disconnectedPlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disconnectedPlayer));

  @JsonKey(ignore: true)
  @override
  _$$PlayerLeftCopyWith<_$PlayerLeft> get copyWith =>
      __$$PlayerLeftCopyWithImpl<_$PlayerLeft>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return playerLeft(disconnectedPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return playerLeft?.call(disconnectedPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerLeft != null) {
      return playerLeft(disconnectedPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return playerLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return playerLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerLeft != null) {
      return playerLeft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerLeftToJson(
      this,
    );
  }
}

abstract class PlayerLeft implements GameMessage {
  const factory PlayerLeft(
      {required final WarscapesPlayer disconnectedPlayer}) = _$PlayerLeft;

  factory PlayerLeft.fromJson(Map<String, dynamic> json) =
      _$PlayerLeft.fromJson;

  WarscapesPlayer get disconnectedPlayer;
  @JsonKey(ignore: true)
  _$$PlayerLeftCopyWith<_$PlayerLeft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerShootCopyWith<$Res> {
  factory _$$PlayerShootCopyWith(
          _$PlayerShoot value, $Res Function(_$PlayerShoot) then) =
      __$$PlayerShootCopyWithImpl<$Res>;
  $Res call({WarscapesPlayer playerShooter});

  $WarscapesPlayerCopyWith<$Res> get playerShooter;
}

/// @nodoc
class __$$PlayerShootCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$PlayerShootCopyWith<$Res> {
  __$$PlayerShootCopyWithImpl(
      _$PlayerShoot _value, $Res Function(_$PlayerShoot) _then)
      : super(_value, (v) => _then(v as _$PlayerShoot));

  @override
  _$PlayerShoot get _value => super._value as _$PlayerShoot;

  @override
  $Res call({
    Object? playerShooter = freezed,
  }) {
    return _then(_$PlayerShoot(
      playerShooter: playerShooter == freezed
          ? _value.playerShooter
          : playerShooter // ignore: cast_nullable_to_non_nullable
              as WarscapesPlayer,
    ));
  }

  @override
  $WarscapesPlayerCopyWith<$Res> get playerShooter {
    return $WarscapesPlayerCopyWith<$Res>(_value.playerShooter, (value) {
      return _then(_value.copyWith(playerShooter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerShoot implements PlayerShoot {
  const _$PlayerShoot({required this.playerShooter, final String? $type})
      : $type = $type ?? 'PLAYER_SHOOT';

  factory _$PlayerShoot.fromJson(Map<String, dynamic> json) =>
      _$$PlayerShootFromJson(json);

  @override
  final WarscapesPlayer playerShooter;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.playerShoot(playerShooter: $playerShooter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerShoot &&
            const DeepCollectionEquality()
                .equals(other.playerShooter, playerShooter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(playerShooter));

  @JsonKey(ignore: true)
  @override
  _$$PlayerShootCopyWith<_$PlayerShoot> get copyWith =>
      __$$PlayerShootCopyWithImpl<_$PlayerShoot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return playerShoot(playerShooter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return playerShoot?.call(playerShooter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerShoot != null) {
      return playerShoot(playerShooter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return playerShoot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return playerShoot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (playerShoot != null) {
      return playerShoot(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerShootToJson(
      this,
    );
  }
}

abstract class PlayerShoot implements GameMessage {
  const factory PlayerShoot({required final WarscapesPlayer playerShooter}) =
      _$PlayerShoot;

  factory PlayerShoot.fromJson(Map<String, dynamic> json) =
      _$PlayerShoot.fromJson;

  WarscapesPlayer get playerShooter;
  @JsonKey(ignore: true)
  _$$PlayerShootCopyWith<_$PlayerShoot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlayerCopyWith<$Res> {
  factory _$$CreatePlayerCopyWith(
          _$CreatePlayer value, $Res Function(_$CreatePlayer) then) =
      __$$CreatePlayerCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$CreatePlayerCopyWithImpl<$Res> extends _$GameMessageCopyWithImpl<$Res>
    implements _$$CreatePlayerCopyWith<$Res> {
  __$$CreatePlayerCopyWithImpl(
      _$CreatePlayer _value, $Res Function(_$CreatePlayer) _then)
      : super(_value, (v) => _then(v as _$CreatePlayer));

  @override
  _$CreatePlayer get _value => super._value as _$CreatePlayer;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$CreatePlayer(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlayer implements CreatePlayer {
  const _$CreatePlayer({required this.username, final String? $type})
      : $type = $type ?? 'CREATE_PLAYER';

  factory _$CreatePlayer.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlayerFromJson(json);

  @override
  final String username;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'GameMessage.createPlayer(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlayer &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$CreatePlayerCopyWith<_$CreatePlayer> get copyWith =>
      __$$CreatePlayerCopyWithImpl<_$CreatePlayer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function(MoveData moveData) playerMoved,
    required TResult Function(WarscapesPlayer newPlayer) playerJoined,
    required TResult Function(WarscapesPlayer disconnectedPlayer) playerLeft,
    required TResult Function(WarscapesPlayer playerShooter) playerShoot,
    required TResult Function(String username) createPlayer,
  }) {
    return createPlayer(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
  }) {
    return createPlayer?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function(MoveData moveData)? playerMoved,
    TResult Function(WarscapesPlayer newPlayer)? playerJoined,
    TResult Function(WarscapesPlayer disconnectedPlayer)? playerLeft,
    TResult Function(WarscapesPlayer playerShooter)? playerShoot,
    TResult Function(String username)? createPlayer,
    required TResult orElse(),
  }) {
    if (createPlayer != null) {
      return createPlayer(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Message value) message,
    required TResult Function(PlayerMoved value) playerMoved,
    required TResult Function(PlayerJoined value) playerJoined,
    required TResult Function(PlayerLeft value) playerLeft,
    required TResult Function(PlayerShoot value) playerShoot,
    required TResult Function(CreatePlayer value) createPlayer,
  }) {
    return createPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
  }) {
    return createPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Message value)? message,
    TResult Function(PlayerMoved value)? playerMoved,
    TResult Function(PlayerJoined value)? playerJoined,
    TResult Function(PlayerLeft value)? playerLeft,
    TResult Function(PlayerShoot value)? playerShoot,
    TResult Function(CreatePlayer value)? createPlayer,
    required TResult orElse(),
  }) {
    if (createPlayer != null) {
      return createPlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlayerToJson(
      this,
    );
  }
}

abstract class CreatePlayer implements GameMessage {
  const factory CreatePlayer({required final String username}) = _$CreatePlayer;

  factory CreatePlayer.fromJson(Map<String, dynamic> json) =
      _$CreatePlayer.fromJson;

  String get username;
  @JsonKey(ignore: true)
  _$$CreatePlayerCopyWith<_$CreatePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveData _$MoveDataFromJson(Map<String, dynamic> json) {
  return _MoveData.fromJson(json);
}

/// @nodoc
mixin _$MoveData {
  int get playerId => throw _privateConstructorUsedError;
  double get direction => throw _privateConstructorUsedError;
  @VectorConverter()
  Vector2 get newPosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveDataCopyWith<MoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveDataCopyWith<$Res> {
  factory $MoveDataCopyWith(MoveData value, $Res Function(MoveData) then) =
      _$MoveDataCopyWithImpl<$Res>;
  $Res call(
      {int playerId, double direction, @VectorConverter() Vector2 newPosition});
}

/// @nodoc
class _$MoveDataCopyWithImpl<$Res> implements $MoveDataCopyWith<$Res> {
  _$MoveDataCopyWithImpl(this._value, this._then);

  final MoveData _value;
  // ignore: unused_field
  final $Res Function(MoveData) _then;

  @override
  $Res call({
    Object? playerId = freezed,
    Object? direction = freezed,
    Object? newPosition = freezed,
  }) {
    return _then(_value.copyWith(
      playerId: playerId == freezed
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      newPosition: newPosition == freezed
          ? _value.newPosition
          : newPosition // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc
abstract class _$$_MoveDataCopyWith<$Res> implements $MoveDataCopyWith<$Res> {
  factory _$$_MoveDataCopyWith(
          _$_MoveData value, $Res Function(_$_MoveData) then) =
      __$$_MoveDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int playerId, double direction, @VectorConverter() Vector2 newPosition});
}

/// @nodoc
class __$$_MoveDataCopyWithImpl<$Res> extends _$MoveDataCopyWithImpl<$Res>
    implements _$$_MoveDataCopyWith<$Res> {
  __$$_MoveDataCopyWithImpl(
      _$_MoveData _value, $Res Function(_$_MoveData) _then)
      : super(_value, (v) => _then(v as _$_MoveData));

  @override
  _$_MoveData get _value => super._value as _$_MoveData;

  @override
  $Res call({
    Object? playerId = freezed,
    Object? direction = freezed,
    Object? newPosition = freezed,
  }) {
    return _then(_$_MoveData(
      playerId: playerId == freezed
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      newPosition: newPosition == freezed
          ? _value.newPosition
          : newPosition // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoveData implements _MoveData {
  const _$_MoveData(
      {required this.playerId,
      required this.direction,
      @VectorConverter() required this.newPosition});

  factory _$_MoveData.fromJson(Map<String, dynamic> json) =>
      _$$_MoveDataFromJson(json);

  @override
  final int playerId;
  @override
  final double direction;
  @override
  @VectorConverter()
  final Vector2 newPosition;

  @override
  String toString() {
    return 'MoveData(playerId: $playerId, direction: $direction, newPosition: $newPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveData &&
            const DeepCollectionEquality().equals(other.playerId, playerId) &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality()
                .equals(other.newPosition, newPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playerId),
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(newPosition));

  @JsonKey(ignore: true)
  @override
  _$$_MoveDataCopyWith<_$_MoveData> get copyWith =>
      __$$_MoveDataCopyWithImpl<_$_MoveData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveDataToJson(
      this,
    );
  }
}

abstract class _MoveData implements MoveData {
  const factory _MoveData(
      {required final int playerId,
      required final double direction,
      @VectorConverter() required final Vector2 newPosition}) = _$_MoveData;

  factory _MoveData.fromJson(Map<String, dynamic> json) = _$_MoveData.fromJson;

  @override
  int get playerId;
  @override
  double get direction;
  @override
  @VectorConverter()
  Vector2 get newPosition;
  @override
  @JsonKey(ignore: true)
  _$$_MoveDataCopyWith<_$_MoveData> get copyWith =>
      throw _privateConstructorUsedError;
}
