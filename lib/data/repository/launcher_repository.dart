import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class LauncherRepository {
  Future getLaunchUrl() async {
    try {
      var whatsAppUrl =
          'whatsapp://send?phone=+6289691944030&text=Hallo Adkesma saya ingin menyampaikan aspirasi saya';
      if (Platform.isAndroid) {
        if (await canLaunchUrl(Uri.parse(whatsAppUrl))) {
          await launchUrl(Uri.parse(whatsAppUrl));
        } else {
          throw 'Could not launch $whatsAppUrl';
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
