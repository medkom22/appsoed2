import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherProvider {
  static launcherURL(String url) async {
    try {
      if (!await launchUrl(Uri.parse(url))) {
        throw 'Something Wrong';
      }
    } catch (e) {
      Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: 'Link tidak bisa dibuka',
      );
    }
  }
}
