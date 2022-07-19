import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/todolist_controller.dart';

class TodolistView extends GetView<TodolistController> {
  const TodolistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.todoController.text.isNotEmpty) {
            var c = controller.addNote();
            print(c);
          } else {
            Get.snackbar(
              'Error',
              'Tidak Boleh Kosong',
              backgroundColor: Colors.red,
            );
          }
        },
        backgroundColor: Colors.orange[200],
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            top: 30,
            right: 24,
            left: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To-do',
                style: TextStyle(
                  color: Colors.orange[800],
                ),
              ),
              TextField(
                controller: controller.todoController,
                decoration: const InputDecoration(
                  hintText: 'Tuliskan sesuatu...',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Deadline',
                style: TextStyle(
                  color: Colors.orange[800],
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030),
                  ).then((value) {
                    controller.dateController =
                        DateFormat('yyyy-MM-dd').format(value!);
                  });
                },
                icon: const Icon(Icons.date_range),
                label: const Text(
                  'Pilih tanggal',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
