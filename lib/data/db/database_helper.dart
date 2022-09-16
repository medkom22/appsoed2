import 'package:appsoed/domain/model/todo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  //create singleton
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static const String _table = 'tableTodo';
  static const String _columnId = 'id';
  static const String _columnName = 'todo';

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'todo.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE $_table (
            $_columnId TEXT PRIMARY KEY,
            $_columnName TEXT
          )''');
      },
    );
    return db;
  }

  Future insertTodo(String todo) async {
    var db = await database;
    var result = await db.insert(
      _table,
      {
        _columnId: DateTime.now().toString(),
        _columnName: todo,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return result;
  }

  Future<List<Todo>> getTodo() async {
    var db = await database;
    var result = await db.query(_table);
    return result.map((item) => Todo.fromJson(item)).toList();
  }

  Future removeTodo(String id) async {
    var db = await database;
    var result =
        await db.delete(_table, where: '$_columnId = ?', whereArgs: [id]);
    return result;
  }
}
