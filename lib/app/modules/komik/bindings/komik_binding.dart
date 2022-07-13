import 'package:get/get.dart';

import '../controllers/komik_controller.dart';

class KomikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KomikController>(
      () => KomikController(),
    );
  }
}
