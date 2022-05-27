import '../../../routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: const Text('Sign In'),
            onPressed: () {
              Get.toNamed(Routes.SIGNIN);
            },
          ),
          ElevatedButton(
            child: const Text('Profile Kabinet'),
            onPressed: () {
              Get.toNamed(Routes.PROFILE_KABINET);
            },
          ),
          ElevatedButton(
            child: const Text('About Appsoed'),
            onPressed: () {
              Get.toNamed(Routes.ABOUT_APPSOED);
            },
          )
        ],
      )),
    );
  }
}
