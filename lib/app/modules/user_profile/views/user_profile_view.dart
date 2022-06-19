import 'package:appsoed/app/modules/user_profile/controllers/user_profile_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../auth/auth_controller.dart';

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
              return data!.isAnonymous
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.network(
                            'https://assets2.lottiefiles.com/packages/lf20_xbhffckx.json',
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text('Perlu Login dengan akun email/google...')
                        ],
                      ),
                    )
                  : ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Image.asset(
                          'assets/ui-profile.png',
                          width: Get.width,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            'Selamat Datang $name',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ListTile(
                          title: const Text('Dark Mode'),
                          trailing: Obx(
                            () => Switch(
                              value: controller.isDark.value,
                              onChanged: (val) {
                                controller.isDark.toggle();
                                Get.changeTheme(
                                  controller.isDark.value
                                      ? ThemeData.dark()
                                      : ThemeData.light(),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    );
            }
          },
        ),
      ),
    );
  }
}
