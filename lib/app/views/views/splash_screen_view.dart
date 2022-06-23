import 'dart:math';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/auth_controller.dart';
import '../../modules/home/views/home_view.dart';
import 'appsoed_login_view.dart';

/// The SplashScreenView class is a StatelessWidget that uses a StreamBuilder to listen to the stream of
/// the AuthController. If the stream is null, it will navigate to the AppsoedLoginView, otherwise it
/// will navigate to the HomeView

class SplashScreenView extends StatelessWidget {
  final authController = Get.find<AuthController>();

  SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authController.streamAuth,
      builder: (context, snapshot) {
        return EasySplashScreen(
          logo: Image.asset(
            'assets/appsoed-logo.png',
            width: 200,
            height: 200,
          ),
          logoSize: 200,
          title: const Text(
            'Appsoed Pro',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          navigator: snapshot.data != null ? HomeView() : AppsoedLoginView(),
          durationInSeconds: 2 + Random().nextInt(4),
          showLoader: true,
          loadingText: const Text(
            'BEM UNSOED\nMedia Komunikasi dan Informasi',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
