import 'package:carousel_slider/carousel_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentSlider = 0.obs;
  final CarouselController carouselController = CarouselController();
  // *: DATA SLIDER
  final List<String> imgList = [
    'assets/S3.png',
    'assets/PORSOED.png',
    'assets/nyala_desa.png',
    'assets/FOSA.png',
  ];
  // * : CONNECTIVITY
  Connectivity connectivity = Connectivity();

// * Name User
// authController.auth.currentUser!.isAnonymous

  //* BOTTOM NAVIGATION BAR
  var currentBottom = 0.obs;
  onPageChangeBottom(int index) {
    currentBottom.value = index;
  }

  onPageChangeSlider(index, reason) {
    currentSlider.value = index;
  }
}
