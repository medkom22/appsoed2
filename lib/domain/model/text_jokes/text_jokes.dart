import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_jokes.freezed.dart';
part 'text_jokes.g.dart';

@freezed
class TextJokes with _$TextJokes {
  factory TextJokes({
    int? status,
    @JsonKey(name: 'end_point') String? endPoint,
    String? method,
    String? data,
  }) = _TextJokes;

  factory TextJokes.fromJson(Map<String, dynamic> json) =>
      _$TextJokesFromJson(json);
}
