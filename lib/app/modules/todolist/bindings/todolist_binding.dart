import 'package:get/get.dart';

import '../controllers/todolist_controller.dart';

class TodolistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodolistController>(
      () => TodolistController(),
    );
  }
}
