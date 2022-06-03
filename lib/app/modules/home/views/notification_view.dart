import 'package:appsoed/app/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificationView extends GetView {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
                bottom: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BackButtonWidget(),
                  Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/notification-home.png',
              height: 300,
              width: double.infinity - (24 * 2),
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Tidak ada notifikasi sekarang ini...',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
