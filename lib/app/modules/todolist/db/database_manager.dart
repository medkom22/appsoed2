import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {
  //private constructor
  static DatabaseManager instance = DatabaseManager._();
  DatabaseManager._();

  //Membuat variabel database
  Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

//Fungsi untuk membuat database
  Future _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'todo.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

//Fungsi untuk membuat table
  Future<void> _onCreate(Database db, int version) async {
    return await db.execute(
      '''
        CREATE TABLE todos (
          id INTEGER PRIMARY KEY,
          todo TEXT,
          date TEXT
          )''',
    );
  }

//JIKA SEWAKTU-WAKTU INGIN MENGHAPUS DATABASE
  Future closeDB() async {
    _database = await instance.database;
    _database!.close();
  }
}
