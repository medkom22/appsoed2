// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_jokes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageJokes _$ImageJokesFromJson(Map<String, dynamic> json) {
  return _ImageJokes.fromJson(json);
}

/// @nodoc
mixin _$ImageJokes {
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point')
  String? get endPoint => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageJokesCopyWith<ImageJokes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageJokesCopyWith<$Res> {
  factory $ImageJokesCopyWith(
          ImageJokes value, $Res Function(ImageJokes) then) =
      _$ImageJokesCopyWithImpl<$Res>;
  $Res call(
      {int? status,
      @JsonKey(name: 'end_point') String? endPoint,
      String? method,
      Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ImageJokesCopyWithImpl<$Res> implements $ImageJokesCopyWith<$Res> {
  _$ImageJokesCopyWithImpl(this._value, this._then);

  final ImageJokes _value;
  // ignore: unused_field
  final $Res Function(ImageJokes) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? endPoint = freezed,
    Object? method = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      endPoint: endPoint == freezed
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ImageJokesCopyWith<$Res>
    implements $ImageJokesCopyWith<$Res> {
  factory _$$_ImageJokesCopyWith(
          _$_ImageJokes value, $Res Function(_$_ImageJokes) then) =
      __$$_ImageJokesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status,
      @JsonKey(name: 'end_point') String? endPoint,
      String? method,
      Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ImageJokesCopyWithImpl<$Res> extends _$ImageJokesCopyWithImpl<$Res>
    implements _$$_ImageJokesCopyWith<$Res> {
  __$$_ImageJokesCopyWithImpl(
      _$_ImageJokes _value, $Res Function(_$_ImageJokes) _then)
      : super(_value, (v) => _then(v as _$_ImageJokes));

  @override
  _$_ImageJokes get _value => super._value as _$_ImageJokes;

  @override
  $Res call({
    Object? status = freezed,
    Object? endPoint = freezed,
    Object? method = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ImageJokes(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      endPoint: endPoint == freezed
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageJokes implements _ImageJokes {
  _$_ImageJokes(
      {this.status,
      @JsonKey(name: 'end_point') this.endPoint,
      this.method,
      this.data});

  factory _$_ImageJokes.fromJson(Map<String, dynamic> json) =>
      _$$_ImageJokesFromJson(json);

  @override
  final int? status;
  @override
  @JsonKey(name: 'end_point')
  final String? endPoint;
  @override
  final String? method;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ImageJokes(status: $status, endPoint: $endPoint, method: $method, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageJokes &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.endPoint, endPoint) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(endPoint),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ImageJokesCopyWith<_$_ImageJokes> get copyWith =>
      __$$_ImageJokesCopyWithImpl<_$_ImageJokes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageJokesToJson(
      this,
    );
  }
}

abstract class _ImageJokes implements ImageJokes {
  factory _ImageJokes(
      {final int? status,
      @JsonKey(name: 'end_point') final String? endPoint,
      final String? method,
      final Data? data}) = _$_ImageJokes;

  factory _ImageJokes.fromJson(Map<String, dynamic> json) =
      _$_ImageJokes.fromJson;

  @override
  int? get status;
  @override
  @JsonKey(name: 'end_point')
  String? get endPoint;
  @override
  String? get method;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ImageJokesCopyWith<_$_ImageJokes> get copyWith =>
      throw _privateConstructorUsedError;
}
