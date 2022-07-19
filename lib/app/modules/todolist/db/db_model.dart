import 'dart:convert';

class DBModel {
  int? id;
  String? todo;
  String? date;
  DBModel({
    this.id,
    this.todo,
    this.date,
  });

  DBModel copyWith({
    int? id,
    String? todo,
    String? date,
  }) {
    return DBModel(
      id: id ?? this.id,
      todo: todo ?? this.todo,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'todo': todo,
      'date': date,
    };
  }

  factory DBModel.fromMap(Map<String, dynamic> map) {
    return DBModel(
      id: map['id']?.toInt(),
      todo: map['todo'],
      date: map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DBModel.fromJson(String source) =>
      DBModel.fromMap(json.decode(source));

  @override
  String toString() => 'DBModel(id: $id, todo: $todo, date: $date)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DBModel &&
        other.id == id &&
        other.todo == todo &&
        other.date == date;
  }

  @override
  int get hashCode => id.hashCode ^ todo.hashCode ^ date.hashCode;
  static List<DBModel> toJsonList(List? data) {
    if (data == null || data.isEmpty) return [];
    return data.map((e) => DBModel.fromMap(e)).toList();
  }
}
