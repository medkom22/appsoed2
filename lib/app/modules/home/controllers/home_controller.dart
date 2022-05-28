import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  final CarouselController carouselController = CarouselController();

  onPageChange(index, reason) {
    current.value = index;
  }
}
