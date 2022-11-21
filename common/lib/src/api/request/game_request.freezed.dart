// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameRequest _$GameRequestFromJson(Map<String, dynamic> json) {
  return _MovePlayer.fromJson(json);
}

/// @nodoc
mixin _$GameRequest {
  String get clientId => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, int x, int y) movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String clientId, int x, int y)? movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, int x, int y)? movePlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovePlayer value) movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovePlayer value)? movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovePlayer value)? movePlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameRequestCopyWith<GameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRequestCopyWith<$Res> {
  factory $GameRequestCopyWith(
          GameRequest value, $Res Function(GameRequest) then) =
      _$GameRequestCopyWithImpl<$Res>;
  $Res call({String clientId, int x, int y});
}

/// @nodoc
class _$GameRequestCopyWithImpl<$Res> implements $GameRequestCopyWith<$Res> {
  _$GameRequestCopyWithImpl(this._value, this._then);

  final GameRequest _value;
  // ignore: unused_field
  final $Res Function(GameRequest) _then;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MovePlayerCopyWith<$Res>
    implements $GameRequestCopyWith<$Res> {
  factory _$$_MovePlayerCopyWith(
          _$_MovePlayer value, $Res Function(_$_MovePlayer) then) =
      __$$_MovePlayerCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, int x, int y});
}

/// @nodoc
class __$$_MovePlayerCopyWithImpl<$Res> extends _$GameRequestCopyWithImpl<$Res>
    implements _$$_MovePlayerCopyWith<$Res> {
  __$$_MovePlayerCopyWithImpl(
      _$_MovePlayer _value, $Res Function(_$_MovePlayer) _then)
      : super(_value, (v) => _then(v as _$_MovePlayer));

  @override
  _$_MovePlayer get _value => super._value as _$_MovePlayer;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_MovePlayer(
      clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovePlayer implements _MovePlayer {
  const _$_MovePlayer(this.clientId, {required this.x, required this.y});

  factory _$_MovePlayer.fromJson(Map<String, dynamic> json) =>
      _$$_MovePlayerFromJson(json);

  @override
  final String clientId;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'GameRequest.movePlayer(clientId: $clientId, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovePlayer &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$$_MovePlayerCopyWith<_$_MovePlayer> get copyWith =>
      __$$_MovePlayerCopyWithImpl<_$_MovePlayer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, int x, int y) movePlayer,
  }) {
    return movePlayer(clientId, x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String clientId, int x, int y)? movePlayer,
  }) {
    return movePlayer?.call(clientId, x, y);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, int x, int y)? movePlayer,
    required TResult orElse(),
  }) {
    if (movePlayer != null) {
      return movePlayer(clientId, x, y);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovePlayer value) movePlayer,
  }) {
    return movePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovePlayer value)? movePlayer,
  }) {
    return movePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovePlayer value)? movePlayer,
    required TResult orElse(),
  }) {
    if (movePlayer != null) {
      return movePlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovePlayerToJson(
      this,
    );
  }
}

abstract class _MovePlayer implements GameRequest {
  const factory _MovePlayer(final String clientId,
      {required final int x, required final int y}) = _$_MovePlayer;

  factory _MovePlayer.fromJson(Map<String, dynamic> json) =
      _$_MovePlayer.fromJson;

  @override
  String get clientId;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_MovePlayerCopyWith<_$_MovePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
