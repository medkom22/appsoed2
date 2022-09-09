// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewsModel {
  String? title;
  String? tanggal;
  String? penulis;
  String? image;
  String? deskripsi;
  NewsModel({
    this.title,
    this.tanggal,
    this.penulis,
    this.image,
    this.deskripsi,
  });

  NewsModel copyWith({
    String? title,
    String? tanggal,
    String? penulis,
    String? image,
    String? deskripsi,
  }) {
    return NewsModel(
      title: title ?? this.title,
      tanggal: tanggal ?? this.tanggal,
      penulis: penulis ?? this.penulis,
      image: image ?? this.image,
      deskripsi: deskripsi ?? this.deskripsi,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'tanggal': tanggal,
      'penulis': penulis,
      'image': image,
      'deskripsi': deskripsi,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      title: map['title'] != null ? map['title'] as String : null,
      tanggal: map['tanggal'] != null ? map['tanggal'] as String : null,
      penulis: map['penulis'] != null ? map['penulis'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      deskripsi: map['deskripsi'] != null ? map['deskripsi'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NewsModel(title: $title, tanggal: $tanggal, penulis: $penulis, image: $image, deskripsi: $deskripsi)';
  }

  @override
  bool operator ==(covariant NewsModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.tanggal == tanggal &&
        other.penulis == penulis &&
        other.image == image &&
        other.deskripsi == deskripsi;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        tanggal.hashCode ^
        penulis.hashCode ^
        image.hashCode ^
        deskripsi.hashCode;
  }
}
