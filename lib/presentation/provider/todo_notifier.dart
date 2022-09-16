import 'package:appsoed/common/result_state.dart';
import 'package:appsoed/data/db/database_helper.dart';
import 'package:appsoed/domain/model/todo.dart';
import 'package:flutter/material.dart';

class TodoNotifier extends ChangeNotifier {
  final DatabaseHelper _database;
  TextEditingController todoController = TextEditingController();
  TodoNotifier(this._database) {
    getTodo();
  }

  late ResultState _state;
  ResultState get state => _state;
  List<Todo> _todo = [];
  List<Todo> get todo => _todo;
  String _message = '';
  String get message => _message;
  Future getTodo() async {
    try {
      _state = ResultState.Loading;
      notifyListeners();
      _todo = await _database.getTodo();
      if (_todo.isNotEmpty) {
        _state = ResultState.HasData;
      } else {
        _state = ResultState.NoData;
        _message = "Tidak ada Data";
      }
      notifyListeners();
    } catch (e) {
      _state = ResultState.Error;
      _message = e.toString();
      notifyListeners();
    }
  }

  Future insertTodo(String todo) async {
    try {
      await _database.insertTodo(todo);
      todoController.clear();
      getTodo();
    } catch (e) {
      _state = ResultState.Error;
      _message = e.toString();
      notifyListeners();
    }
  }

  Future deleteTodo(String id) async {
    try {
      await _database.removeTodo(id);
      getTodo();
    } catch (e) {
      _state = ResultState.Error;
      _message = e.toString();
      notifyListeners();
    }
  }

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }
}
