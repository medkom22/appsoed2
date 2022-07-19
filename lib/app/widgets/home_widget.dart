import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/auth_controller.dart';
import '../modules/home/controllers/home_controller.dart';
import 'connection_widget.dart';

/// NOTE: WIDGET INI ADALAH TAMPILAN UNTUK HOME VIEW
class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);

  final authController = Get.find<AuthController>();
  final controller = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    // * NAME USER :
    List<String>? user = authController.auth.currentUser?.email?.split('@');
    String? name = user?.first;
    List<Widget> imageSliders = controller.imgList
        .map(
          (item) => ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              item,
              fit: BoxFit.fill,
            ),
          ),
        )
        .toList();
    return StreamBuilder<ConnectivityResult>(
      stream: controller.connectivity.onConnectivityChanged,
      builder: (context, snapshot) {
        ConnectivityResult? data = snapshot.data;
        if (data == null || data == ConnectivityResult.none) {
          return const WidgetConnectionFailed();
        } else {
          return WidgetConnectionSuccess(
            authController: authController,
            name: name ?? "Kosong",
            controller: controller,
            imageSliders: imageSliders,
          );
        }
      },
    );
  }
}
