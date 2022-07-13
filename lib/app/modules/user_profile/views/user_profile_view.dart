import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/auth_controller.dart';
import '../controllers/user_profile_controller.dart';
import 'widgets/anonym_widget.dart';
import 'widgets/user_profile_widget.dart';

class UserProfileView extends GetView<UserProfileController> {
  UserProfileView({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<User?>(
          stream: authController.streamAuth,
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.data == null) {
              return const CircularProgressIndicator();
            } else {
              String? name = data?.email?.split('@').first;
              if (data!.isAnonymous) {
                return AnonymProfileWidget(authController: authController);
              } else {
                return UserProfileWidget(
                  name: name,
                  controller: controller,
                  authController: authController,
                );
              }
            }
          },
        ),
      ),
    );
  }
}
