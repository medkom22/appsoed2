import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class LauncherRepository {
  Future getLaunchUrl(String wa) async {
    try {
      var whatsAppUrl = 'whatsapp://send?phone=+62$wa';
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
