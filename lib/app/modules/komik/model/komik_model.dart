import 'dart:convert';

import 'package:flutter/foundation.dart';

class KomikModel {
  int id;
  String image;
  List<String> imageList;
  KomikModel({
    required this.id,
    required this.image,
    required this.imageList,
  });

  KomikModel copyWith({
    int? id,
    String? image,
    List<String>? imageList,
  }) {
    return KomikModel(
      id: id ?? this.id,
      image: image ?? this.image,
      imageList: imageList ?? this.imageList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'imageList': imageList,
    };
  }

  factory KomikModel.fromMap(Map<String, dynamic> map) {
    return KomikModel(
      id: map['id']?.toInt() ?? 0,
      image: map['image'] ?? '',
      imageList: List<String>.from(map['list_image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory KomikModel.fromJson(String source) =>
      KomikModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'KomikModel(id: $id, image: $image, imageList: $imageList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KomikModel &&
        other.id == id &&
        other.image == image &&
        listEquals(other.imageList, imageList);
  }

  @override
  int get hashCode => id.hashCode ^ image.hashCode ^ imageList.hashCode;
}
