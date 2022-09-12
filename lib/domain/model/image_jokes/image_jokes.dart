import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'image_jokes.freezed.dart';
part 'image_jokes.g.dart';

@freezed
class ImageJokes with _$ImageJokes {
	factory ImageJokes({
		int? status,
		@JsonKey(name: 'end_point') String? endPoint,
		String? method,
		Data? data,
	}) = _ImageJokes;

	factory ImageJokes.fromJson(Map<String, dynamic> json) => _$ImageJokesFromJson(json);
}