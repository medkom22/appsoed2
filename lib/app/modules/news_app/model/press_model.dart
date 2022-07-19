import 'package:freezed_annotation/freezed_annotation.dart';

part 'press_model.freezed.dart';
part 'press_model.g.dart';

@freezed
class PressModel with _$PressModel {
  const factory PressModel({
    String? title,
    String? deskripsi,
    String? penulis,
    String? tanggal,
    String? image,
  }) = _PressModel;
  //create factory
  factory PressModel.fromJson(Map<String, dynamic> json) =>
      _$PressModelFromJson(json);
}
