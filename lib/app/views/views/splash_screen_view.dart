import 'dart:async';
import 'dart:math';

import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2 + Random().nextInt(3)), () {
      Get.offNamed(Routes.APPSOED_LOGIN);
    });
  }

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
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Appsoed Pro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 80,
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
