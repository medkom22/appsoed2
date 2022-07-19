import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../db/database_manager.dart';

class TodolistController extends GetxController {
  TextEditingController todoController = TextEditingController();
  String dateController = '';
  DatabaseManager database = DatabaseManager.instance;

  Future addNote() async {
    Database db = await database.database;
    await db.insert(
      'todos',
      {
        'id': Random().nextInt(1000),
        'todo': todoController.text,
        'date': dateController,
      },
    );
    Get.back();
    Get.snackbar(
      'Sukses',
      'Berhasil Menambahkan todolist',
      backgroundColor: Colors.lightGreen,
    );
  }

  @override
  void dispose() {
    todoController.dispose();

    super.dispose();
  }
}
