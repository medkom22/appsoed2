// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_jokes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextJokes _$TextJokesFromJson(Map<String, dynamic> json) {
  return _TextJokes.fromJson(json);
}

/// @nodoc
mixin _$TextJokes {
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point')
  String? get endPoint => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextJokesCopyWith<TextJokes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextJokesCopyWith<$Res> {
  factory $TextJokesCopyWith(TextJokes value, $Res Function(TextJokes) then) =
      _$TextJokesCopyWithImpl<$Res>;
  $Res call(
      {int? status,
      @JsonKey(name: 'end_point') String? endPoint,
      String? method,
      String? data});
}

/// @nodoc
class _$TextJokesCopyWithImpl<$Res> implements $TextJokesCopyWith<$Res> {
  _$TextJokesCopyWithImpl(this._value, this._then);

  final TextJokes _value;
  // ignore: unused_field
  final $Res Function(TextJokes) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TextJokesCopyWith<$Res> implements $TextJokesCopyWith<$Res> {
  factory _$$_TextJokesCopyWith(
          _$_TextJokes value, $Res Function(_$_TextJokes) then) =
      __$$_TextJokesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status,
      @JsonKey(name: 'end_point') String? endPoint,
      String? method,
      String? data});
}

/// @nodoc
class __$$_TextJokesCopyWithImpl<$Res> extends _$TextJokesCopyWithImpl<$Res>
    implements _$$_TextJokesCopyWith<$Res> {
  __$$_TextJokesCopyWithImpl(
      _$_TextJokes _value, $Res Function(_$_TextJokes) _then)
      : super(_value, (v) => _then(v as _$_TextJokes));

  @override
  _$_TextJokes get _value => super._value as _$_TextJokes;

  @override
  $Res call({
    Object? status = freezed,
    Object? endPoint = freezed,
    Object? method = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TextJokes(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextJokes implements _TextJokes {
  _$_TextJokes(
      {this.status,
      @JsonKey(name: 'end_point') this.endPoint,
      this.method,
      this.data});

  factory _$_TextJokes.fromJson(Map<String, dynamic> json) =>
      _$$_TextJokesFromJson(json);

  @override
  final int? status;
  @override
  @JsonKey(name: 'end_point')
  final String? endPoint;
  @override
  final String? method;
  @override
  final String? data;

  @override
  String toString() {
    return 'TextJokes(status: $status, endPoint: $endPoint, method: $method, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextJokes &&
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
  _$$_TextJokesCopyWith<_$_TextJokes> get copyWith =>
      __$$_TextJokesCopyWithImpl<_$_TextJokes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextJokesToJson(
      this,
    );
  }
}

abstract class _TextJokes implements TextJokes {
  factory _TextJokes(
      {final int? status,
      @JsonKey(name: 'end_point') final String? endPoint,
      final String? method,
      final String? data}) = _$_TextJokes;

  factory _TextJokes.fromJson(Map<String, dynamic> json) =
      _$_TextJokes.fromJson;

  @override
  int? get status;
  @override
  @JsonKey(name: 'end_point')
  String? get endPoint;
  @override
  String? get method;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TextJokesCopyWith<_$_TextJokes> get copyWith =>
      throw _privateConstructorUsedError;
}
