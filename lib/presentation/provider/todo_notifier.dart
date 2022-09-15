import 'package:appsoed/domain/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoNotifier extends ChangeNotifier {
  final List<Todo> _todos = [];
  List<Todo> get todo => _todos;
  addData() {
    _todos.add(Todo('ADDD'));
    notifyListeners();
  }
}
