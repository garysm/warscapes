// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'warscapes_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WarscapesPlayer _$WarscapesPlayerFromJson(Map<String, dynamic> json) {
  return _WarscapesPlayer.fromJson(json);
}

/// @nodoc
mixin _$WarscapesPlayer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PlayerMovementData? get movementData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarscapesPlayerCopyWith<WarscapesPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarscapesPlayerCopyWith<$Res> {
  factory $WarscapesPlayerCopyWith(
          WarscapesPlayer value, $Res Function(WarscapesPlayer) then) =
      _$WarscapesPlayerCopyWithImpl<$Res>;
  $Res call({int id, String name, PlayerMovementData? movementData});

  $PlayerMovementDataCopyWith<$Res>? get movementData;
}

/// @nodoc
class _$WarscapesPlayerCopyWithImpl<$Res>
    implements $WarscapesPlayerCopyWith<$Res> {
  _$WarscapesPlayerCopyWithImpl(this._value, this._then);

  final WarscapesPlayer _value;
  // ignore: unused_field
  final $Res Function(WarscapesPlayer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? movementData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      movementData: movementData == freezed
          ? _value.movementData
          : movementData // ignore: cast_nullable_to_non_nullable
              as PlayerMovementData?,
    ));
  }

  @override
  $PlayerMovementDataCopyWith<$Res>? get movementData {
    if (_value.movementData == null) {
      return null;
    }

    return $PlayerMovementDataCopyWith<$Res>(_value.movementData!, (value) {
      return _then(_value.copyWith(movementData: value));
    });
  }
}

/// @nodoc
abstract class _$$_WarscapesPlayerCopyWith<$Res>
    implements $WarscapesPlayerCopyWith<$Res> {
  factory _$$_WarscapesPlayerCopyWith(
          _$_WarscapesPlayer value, $Res Function(_$_WarscapesPlayer) then) =
      __$$_WarscapesPlayerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, PlayerMovementData? movementData});

  @override
  $PlayerMovementDataCopyWith<$Res>? get movementData;
}

/// @nodoc
class __$$_WarscapesPlayerCopyWithImpl<$Res>
    extends _$WarscapesPlayerCopyWithImpl<$Res>
    implements _$$_WarscapesPlayerCopyWith<$Res> {
  __$$_WarscapesPlayerCopyWithImpl(
      _$_WarscapesPlayer _value, $Res Function(_$_WarscapesPlayer) _then)
      : super(_value, (v) => _then(v as _$_WarscapesPlayer));

  @override
  _$_WarscapesPlayer get _value => super._value as _$_WarscapesPlayer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? movementData = freezed,
  }) {
    return _then(_$_WarscapesPlayer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      movementData: movementData == freezed
          ? _value.movementData
          : movementData // ignore: cast_nullable_to_non_nullable
              as PlayerMovementData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WarscapesPlayer implements _WarscapesPlayer {
  const _$_WarscapesPlayer(
      {required this.id, required this.name, this.movementData});

  factory _$_WarscapesPlayer.fromJson(Map<String, dynamic> json) =>
      _$$_WarscapesPlayerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final PlayerMovementData? movementData;

  @override
  String toString() {
    return 'WarscapesPlayer(id: $id, name: $name, movementData: $movementData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarscapesPlayer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.movementData, movementData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(movementData));

  @JsonKey(ignore: true)
  @override
  _$$_WarscapesPlayerCopyWith<_$_WarscapesPlayer> get copyWith =>
      __$$_WarscapesPlayerCopyWithImpl<_$_WarscapesPlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WarscapesPlayerToJson(
      this,
    );
  }
}

abstract class _WarscapesPlayer implements WarscapesPlayer {
  const factory _WarscapesPlayer(
      {required final int id,
      required final String name,
      final PlayerMovementData? movementData}) = _$_WarscapesPlayer;

  factory _WarscapesPlayer.fromJson(Map<String, dynamic> json) =
      _$_WarscapesPlayer.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  PlayerMovementData? get movementData;
  @override
  @JsonKey(ignore: true)
  _$$_WarscapesPlayerCopyWith<_$_WarscapesPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerMovementData _$PlayerMovementDataFromJson(Map<String, dynamic> json) {
  return _PlayerMovementData.fromJson(json);
}

/// @nodoc
mixin _$PlayerMovementData {
  double get direction => throw _privateConstructorUsedError;
  @VectorConverter()
  Vector2 get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerMovementDataCopyWith<PlayerMovementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerMovementDataCopyWith<$Res> {
  factory $PlayerMovementDataCopyWith(
          PlayerMovementData value, $Res Function(PlayerMovementData) then) =
      _$PlayerMovementDataCopyWithImpl<$Res>;
  $Res call({double direction, @VectorConverter() Vector2 position});
}

/// @nodoc
class _$PlayerMovementDataCopyWithImpl<$Res>
    implements $PlayerMovementDataCopyWith<$Res> {
  _$PlayerMovementDataCopyWithImpl(this._value, this._then);

  final PlayerMovementData _value;
  // ignore: unused_field
  final $Res Function(PlayerMovementData) _then;

  @override
  $Res call({
    Object? direction = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerMovementDataCopyWith<$Res>
    implements $PlayerMovementDataCopyWith<$Res> {
  factory _$$_PlayerMovementDataCopyWith(_$_PlayerMovementData value,
          $Res Function(_$_PlayerMovementData) then) =
      __$$_PlayerMovementDataCopyWithImpl<$Res>;
  @override
  $Res call({double direction, @VectorConverter() Vector2 position});
}

/// @nodoc
class __$$_PlayerMovementDataCopyWithImpl<$Res>
    extends _$PlayerMovementDataCopyWithImpl<$Res>
    implements _$$_PlayerMovementDataCopyWith<$Res> {
  __$$_PlayerMovementDataCopyWithImpl(
      _$_PlayerMovementData _value, $Res Function(_$_PlayerMovementData) _then)
      : super(_value, (v) => _then(v as _$_PlayerMovementData));

  @override
  _$_PlayerMovementData get _value => super._value as _$_PlayerMovementData;

  @override
  $Res call({
    Object? direction = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_PlayerMovementData(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerMovementData implements _PlayerMovementData {
  const _$_PlayerMovementData(
      {required this.direction, @VectorConverter() required this.position});

  factory _$_PlayerMovementData.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerMovementDataFromJson(json);

  @override
  final double direction;
  @override
  @VectorConverter()
  final Vector2 position;

  @override
  String toString() {
    return 'PlayerMovementData(direction: $direction, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerMovementData &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerMovementDataCopyWith<_$_PlayerMovementData> get copyWith =>
      __$$_PlayerMovementDataCopyWithImpl<_$_PlayerMovementData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerMovementDataToJson(
      this,
    );
  }
}

abstract class _PlayerMovementData implements PlayerMovementData {
  const factory _PlayerMovementData(
          {required final double direction,
          @VectorConverter() required final Vector2 position}) =
      _$_PlayerMovementData;

  factory _PlayerMovementData.fromJson(Map<String, dynamic> json) =
      _$_PlayerMovementData.fromJson;

  @override
  double get direction;
  @override
  @VectorConverter()
  Vector2 get position;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerMovementDataCopyWith<_$_PlayerMovementData> get copyWith =>
      throw _privateConstructorUsedError;
}
