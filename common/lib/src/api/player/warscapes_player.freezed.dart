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
  PlayerPositionData? get positionData => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, PlayerPositionData? positionData});

  $PlayerPositionDataCopyWith<$Res>? get positionData;
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
    Object? positionData = freezed,
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
      positionData: positionData == freezed
          ? _value.positionData
          : positionData // ignore: cast_nullable_to_non_nullable
              as PlayerPositionData?,
    ));
  }

  @override
  $PlayerPositionDataCopyWith<$Res>? get positionData {
    if (_value.positionData == null) {
      return null;
    }

    return $PlayerPositionDataCopyWith<$Res>(_value.positionData!, (value) {
      return _then(_value.copyWith(positionData: value));
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
  $Res call({int id, String name, PlayerPositionData? positionData});

  @override
  $PlayerPositionDataCopyWith<$Res>? get positionData;
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
    Object? positionData = freezed,
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
      positionData: positionData == freezed
          ? _value.positionData
          : positionData // ignore: cast_nullable_to_non_nullable
              as PlayerPositionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WarscapesPlayer implements _WarscapesPlayer {
  const _$_WarscapesPlayer(
      {required this.id, required this.name, this.positionData});

  factory _$_WarscapesPlayer.fromJson(Map<String, dynamic> json) =>
      _$$_WarscapesPlayerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final PlayerPositionData? positionData;

  @override
  String toString() {
    return 'WarscapesPlayer(id: $id, name: $name, positionData: $positionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarscapesPlayer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.positionData, positionData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(positionData));

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
      final PlayerPositionData? positionData}) = _$_WarscapesPlayer;

  factory _WarscapesPlayer.fromJson(Map<String, dynamic> json) =
      _$_WarscapesPlayer.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  PlayerPositionData? get positionData;
  @override
  @JsonKey(ignore: true)
  _$$_WarscapesPlayerCopyWith<_$_WarscapesPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerPositionData _$PlayerPositionDataFromJson(Map<String, dynamic> json) {
  return _PlayerPositionData.fromJson(json);
}

/// @nodoc
mixin _$PlayerPositionData {
  double get direction => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerPositionDataCopyWith<PlayerPositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerPositionDataCopyWith<$Res> {
  factory $PlayerPositionDataCopyWith(
          PlayerPositionData value, $Res Function(PlayerPositionData) then) =
      _$PlayerPositionDataCopyWithImpl<$Res>;
  $Res call({double direction, double x, double y});
}

/// @nodoc
class _$PlayerPositionDataCopyWithImpl<$Res>
    implements $PlayerPositionDataCopyWith<$Res> {
  _$PlayerPositionDataCopyWithImpl(this._value, this._then);

  final PlayerPositionData _value;
  // ignore: unused_field
  final $Res Function(PlayerPositionData) _then;

  @override
  $Res call({
    Object? direction = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerPositionDataCopyWith<$Res>
    implements $PlayerPositionDataCopyWith<$Res> {
  factory _$$_PlayerPositionDataCopyWith(_$_PlayerPositionData value,
          $Res Function(_$_PlayerPositionData) then) =
      __$$_PlayerPositionDataCopyWithImpl<$Res>;
  @override
  $Res call({double direction, double x, double y});
}

/// @nodoc
class __$$_PlayerPositionDataCopyWithImpl<$Res>
    extends _$PlayerPositionDataCopyWithImpl<$Res>
    implements _$$_PlayerPositionDataCopyWith<$Res> {
  __$$_PlayerPositionDataCopyWithImpl(
      _$_PlayerPositionData _value, $Res Function(_$_PlayerPositionData) _then)
      : super(_value, (v) => _then(v as _$_PlayerPositionData));

  @override
  _$_PlayerPositionData get _value => super._value as _$_PlayerPositionData;

  @override
  $Res call({
    Object? direction = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_PlayerPositionData(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerPositionData implements _PlayerPositionData {
  const _$_PlayerPositionData(
      {required this.direction, required this.x, required this.y});

  factory _$_PlayerPositionData.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerPositionDataFromJson(json);

  @override
  final double direction;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'PlayerPositionData(direction: $direction, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerPositionData &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerPositionDataCopyWith<_$_PlayerPositionData> get copyWith =>
      __$$_PlayerPositionDataCopyWithImpl<_$_PlayerPositionData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerPositionDataToJson(
      this,
    );
  }
}

abstract class _PlayerPositionData implements PlayerPositionData {
  const factory _PlayerPositionData(
      {required final double direction,
      required final double x,
      required final double y}) = _$_PlayerPositionData;

  factory _PlayerPositionData.fromJson(Map<String, dynamic> json) =
      _$_PlayerPositionData.fromJson;

  @override
  double get direction;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerPositionDataCopyWith<_$_PlayerPositionData> get copyWith =>
      throw _privateConstructorUsedError;
}
