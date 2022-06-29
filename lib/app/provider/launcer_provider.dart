import 'dart:io';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

// NOTE: File ini digunakan untuk melakukan aksi ke suatu link
class LauncherProvider {
  static launcherURL(String url) async {
    try {
      if (!await launchUrl(
        Uri.parse(url),
      )) {
        throw 'Something Wrong';
      }
    } catch (e) {
      Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: 'Link tidak bisa dibuka',
      );
    }
  }

  static launcherWA(String text, String number) async {
    var whatsapp = number;
    var whatsAppUrl = "whatsapp://send?phone=$whatsapp&text=$text";
    if (Platform.isAndroid) {
      if (await canLaunchUrl(Uri.parse(whatsAppUrl))) {
        await launchUrl(Uri.parse(whatsAppUrl));
      } else {
        throw 'Could not launch $whatsAppUrl';
      }
    }
  }
}
