import '../../widgets/main_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppsoedLoginView extends GetView {
  const AppsoedLoginView({Key? key}) : super(key: key);

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
              const MainButtonWidget(text: 'Masuk Sebagai Tamu'),
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
              const MainButtonWidget(text: 'Sign In'),
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
    ));
  }
}
