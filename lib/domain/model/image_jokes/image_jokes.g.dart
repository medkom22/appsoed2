// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_jokes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageJokes _$$_ImageJokesFromJson(Map<String, dynamic> json) =>
    _$_ImageJokes(
      status: json['status'] as int?,
      endPoint: json['end_point'] as String?,
      method: json['method'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageJokesToJson(_$_ImageJokes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'end_point': instance.endPoint,
      'method': instance.method,
      'data': instance.data,
    };
