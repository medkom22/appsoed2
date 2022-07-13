import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/auth_controller.dart';
import '../../routes/app_pages.dart';
import '../../widgets/main_button_widget.dart';

/// A view class that is used to display the Appsoed login page.
class AppsoedLoginView extends GetView {
  AppsoedLoginView({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'appsoed',
                  child: Image.asset(
                    'assets/appsoed-logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Appsoed Pro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                MainButtonWidget(
                  text: 'Masuk Sebagai Tamu',
                  navigator: () {
                    authController.signinAnonym();
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'atau',
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                MainButtonWidget(
                    text: 'Sign In',
                    navigator: () {
                      Get.toNamed(Routes.SIGNIN);
                    }),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            right: 0,
            left: 0,
            child: Column(
              children: const [
                Text(
                  'BEM UNSOED',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Media Komunikasi dan Informasi',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
