import 'package:get/get.dart';

import '../controllers/news_app_controller.dart';

class NewsAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsAppController>(
      () => NewsAppController(),
    );
  }
}
