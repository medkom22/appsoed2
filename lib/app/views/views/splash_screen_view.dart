import 'dart:math';

import 'package:appsoed/app/auth/auth_controller.dart';
import 'package:appsoed/app/modules/home/views/home_view.dart';
import 'package:appsoed/app/views/views/appsoed_login_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final authController = Get.find<AuthController>();
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
        });
  }
}
