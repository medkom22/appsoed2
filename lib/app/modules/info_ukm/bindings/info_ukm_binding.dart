import 'package:get/get.dart';

import '../controllers/info_ukm_controller.dart';

class InfoUkmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoUkmController>(
      () => InfoUkmController(),
    );
  }
}
