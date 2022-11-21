// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) {
  switch (json['requestType']) {
    case 'get-clients':
      return _GetClients.fromJson(json);
    case 'move-player':
      return _MovePlayer.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'requestType', 'GameResponse',
          'Invalid union type "${json['requestType']}"!');
  }
}

/// @nodoc
mixin _$GameResponse {
  String get clientId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, List<String> connectedClients)
        getClients,
    required TResult Function(String clientId, int x, int y) movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
    TResult Function(String clientId, int x, int y)? movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
    TResult Function(String clientId, int x, int y)? movePlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClients value) getClients,
    required TResult Function(_MovePlayer value) movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
    TResult Function(_MovePlayer value)? movePlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
    TResult Function(_MovePlayer value)? movePlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameResponseCopyWith<GameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResponseCopyWith<$Res> {
  factory $GameResponseCopyWith(
          GameResponse value, $Res Function(GameResponse) then) =
      _$GameResponseCopyWithImpl<$Res>;
  $Res call({String clientId});
}

/// @nodoc
class _$GameResponseCopyWithImpl<$Res> implements $GameResponseCopyWith<$Res> {
  _$GameResponseCopyWithImpl(this._value, this._then);

  final GameResponse _value;
  // ignore: unused_field
  final $Res Function(GameResponse) _then;

  @override
  $Res call({
    Object? clientId = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetClientsCopyWith<$Res>
    implements $GameResponseCopyWith<$Res> {
  factory _$$_GetClientsCopyWith(
          _$_GetClients value, $Res Function(_$_GetClients) then) =
      __$$_GetClientsCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, List<String> connectedClients});
}

/// @nodoc
class __$$_GetClientsCopyWithImpl<$Res> extends _$GameResponseCopyWithImpl<$Res>
    implements _$$_GetClientsCopyWith<$Res> {
  __$$_GetClientsCopyWithImpl(
      _$_GetClients _value, $Res Function(_$_GetClients) _then)
      : super(_value, (v) => _then(v as _$_GetClients));

  @override
  _$_GetClients get _value => super._value as _$_GetClients;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? connectedClients = freezed,
  }) {
    return _then(_$_GetClients(
      clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      connectedClients: connectedClients == freezed
          ? _value._connectedClients
          : connectedClients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetClients implements _GetClients {
  const _$_GetClients(this.clientId,
      {required final List<String> connectedClients, final String? $type})
      : _connectedClients = connectedClients,
        $type = $type ?? 'get-clients';

  factory _$_GetClients.fromJson(Map<String, dynamic> json) =>
      _$$_GetClientsFromJson(json);

  @override
  final String clientId;
  final List<String> _connectedClients;
  @override
  List<String> get connectedClients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedClients);
  }

  @JsonKey(name: 'requestType')
  final String $type;

  @override
  String toString() {
    return 'GameResponse.getClients(clientId: $clientId, connectedClients: $connectedClients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClients &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality()
                .equals(other._connectedClients, _connectedClients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(_connectedClients));

  @JsonKey(ignore: true)
  @override
  _$$_GetClientsCopyWith<_$_GetClients> get copyWith =>
      __$$_GetClientsCopyWithImpl<_$_GetClients>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, List<String> connectedClients)
        getClients,
    required TResult Function(String clientId, int x, int y) movePlayer,
  }) {
    return getClients(clientId, connectedClients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
    TResult Function(String clientId, int x, int y)? movePlayer,
  }) {
    return getClients?.call(clientId, connectedClients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
    TResult Function(String clientId, int x, int y)? movePlayer,
    required TResult orElse(),
  }) {
    if (getClients != null) {
      return getClients(clientId, connectedClients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClients value) getClients,
    required TResult Function(_MovePlayer value) movePlayer,
  }) {
    return getClients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
    TResult Function(_MovePlayer value)? movePlayer,
  }) {
    return getClients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
    TResult Function(_MovePlayer value)? movePlayer,
    required TResult orElse(),
  }) {
    if (getClients != null) {
      return getClients(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetClientsToJson(
      this,
    );
  }
}

abstract class _GetClients implements GameResponse {
  const factory _GetClients(final String clientId,
      {required final List<String> connectedClients}) = _$_GetClients;

  factory _GetClients.fromJson(Map<String, dynamic> json) =
      _$_GetClients.fromJson;

  @override
  String get clientId;
  List<String> get connectedClients;
  @override
  @JsonKey(ignore: true)
  _$$_GetClientsCopyWith<_$_GetClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovePlayerCopyWith<$Res>
    implements $GameResponseCopyWith<$Res> {
  factory _$$_MovePlayerCopyWith(
          _$_MovePlayer value, $Res Function(_$_MovePlayer) then) =
      __$$_MovePlayerCopyWithImpl<$Res>;
  @override
  $Res call({String clientId, int x, int y});
}

/// @nodoc
class __$$_MovePlayerCopyWithImpl<$Res> extends _$GameResponseCopyWithImpl<$Res>
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
  const _$_MovePlayer(this.clientId,
      {required this.x, required this.y, final String? $type})
      : $type = $type ?? 'move-player';

  factory _$_MovePlayer.fromJson(Map<String, dynamic> json) =>
      _$$_MovePlayerFromJson(json);

  @override
  final String clientId;
  @override
  final int x;
  @override
  final int y;

  @JsonKey(name: 'requestType')
  final String $type;

  @override
  String toString() {
    return 'GameResponse.movePlayer(clientId: $clientId, x: $x, y: $y)';
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
    required TResult Function(String clientId, List<String> connectedClients)
        getClients,
    required TResult Function(String clientId, int x, int y) movePlayer,
  }) {
    return movePlayer(clientId, x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
    TResult Function(String clientId, int x, int y)? movePlayer,
  }) {
    return movePlayer?.call(clientId, x, y);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, List<String> connectedClients)?
        getClients,
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
    required TResult Function(_GetClients value) getClients,
    required TResult Function(_MovePlayer value) movePlayer,
  }) {
    return movePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
    TResult Function(_MovePlayer value)? movePlayer,
  }) {
    return movePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClients value)? getClients,
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

abstract class _MovePlayer implements GameResponse {
  const factory _MovePlayer(final String clientId,
      {required final int x, required final int y}) = _$_MovePlayer;

  factory _MovePlayer.fromJson(Map<String, dynamic> json) =
      _$_MovePlayer.fromJson;

  @override
  String get clientId;
  int get x;
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_MovePlayerCopyWith<_$_MovePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
