import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentSlider = 0.obs;
  final CarouselController carouselController = CarouselController();
  var currentBottom = 0.obs;
  onPageChangeBottom(int index) {
    currentBottom.value = index;
  }

  onPageChangeSlider(index, reason) {
    currentSlider.value = index;
  }
}
