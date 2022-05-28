import '../../../routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Selamat datang,\nNama User!',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        )
      ],
    )));
  }
}
