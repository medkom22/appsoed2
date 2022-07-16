// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'press_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PressModel _$PressModelFromJson(Map<String, dynamic> json) {
  return _PressModel.fromJson(json);
}

/// @nodoc
mixin _$PressModel {
  String? get title => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get penulis => throw _privateConstructorUsedError;
  String? get tanggal => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PressModelCopyWith<PressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PressModelCopyWith<$Res> {
  factory $PressModelCopyWith(
          PressModel value, $Res Function(PressModel) then) =
      _$PressModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? deskripsi,
      String? penulis,
      String? tanggal,
      String? image});
}

/// @nodoc
class _$PressModelCopyWithImpl<$Res> implements $PressModelCopyWith<$Res> {
  _$PressModelCopyWithImpl(this._value, this._then);

  final PressModel _value;
  // ignore: unused_field
  final $Res Function(PressModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? deskripsi = freezed,
    Object? penulis = freezed,
    Object? tanggal = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      penulis: penulis == freezed
          ? _value.penulis
          : penulis // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: tanggal == freezed
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PressModelCopyWith<$Res>
    implements $PressModelCopyWith<$Res> {
  factory _$$_PressModelCopyWith(
          _$_PressModel value, $Res Function(_$_PressModel) then) =
      __$$_PressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? deskripsi,
      String? penulis,
      String? tanggal,
      String? image});
}

/// @nodoc
class __$$_PressModelCopyWithImpl<$Res> extends _$PressModelCopyWithImpl<$Res>
    implements _$$_PressModelCopyWith<$Res> {
  __$$_PressModelCopyWithImpl(
      _$_PressModel _value, $Res Function(_$_PressModel) _then)
      : super(_value, (v) => _then(v as _$_PressModel));

  @override
  _$_PressModel get _value => super._value as _$_PressModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? deskripsi = freezed,
    Object? penulis = freezed,
    Object? tanggal = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_PressModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      penulis: penulis == freezed
          ? _value.penulis
          : penulis // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: tanggal == freezed
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PressModel implements _PressModel {
  const _$_PressModel(
      {this.title, this.deskripsi, this.penulis, this.tanggal, this.image});

  factory _$_PressModel.fromJson(Map<String, dynamic> json) =>
      _$$_PressModelFromJson(json);

  @override
  final String? title;
  @override
  final String? deskripsi;
  @override
  final String? penulis;
  @override
  final String? tanggal;
  @override
  final String? image;

  @override
  String toString() {
    return 'PressModel(title: $title, deskripsi: $deskripsi, penulis: $penulis, tanggal: $tanggal, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PressModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.deskripsi, deskripsi) &&
            const DeepCollectionEquality().equals(other.penulis, penulis) &&
            const DeepCollectionEquality().equals(other.tanggal, tanggal) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(deskripsi),
      const DeepCollectionEquality().hash(penulis),
      const DeepCollectionEquality().hash(tanggal),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_PressModelCopyWith<_$_PressModel> get copyWith =>
      __$$_PressModelCopyWithImpl<_$_PressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PressModelToJson(this);
  }
}

abstract class _PressModel implements PressModel {
  const factory _PressModel(
      {final String? title,
      final String? deskripsi,
      final String? penulis,
      final String? tanggal,
      final String? image}) = _$_PressModel;

  factory _PressModel.fromJson(Map<String, dynamic> json) =
      _$_PressModel.fromJson;

  @override
  String? get title;
  @override
  String? get deskripsi;
  @override
  String? get penulis;
  @override
  String? get tanggal;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_PressModelCopyWith<_$_PressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
