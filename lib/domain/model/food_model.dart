// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FoodModel {
  String? name;
  String? phone;
  String? image;
  FoodModel({
    this.name,
    this.phone,
    this.image,
  });

  FoodModel copyWith({
    String? name,
    String? phone,
    String? image,
  }) {
    return FoodModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'image': image,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      name: map['name'] != null ? map['name'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FoodModel(name: $name, phone: $phone, image: $image)';

  @override
  bool operator ==(covariant FoodModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.phone == phone && other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ phone.hashCode ^ image.hashCode;
}
