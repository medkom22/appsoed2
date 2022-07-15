import 'package:get/get.dart';

import '../controllers/fakultas_controller.dart';

class FakultasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FakultasController>(
      () => FakultasController(),
    );
  }
}
