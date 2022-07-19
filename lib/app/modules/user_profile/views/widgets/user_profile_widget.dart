import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../auth/auth_controller.dart';
import '../../../../routes/app_pages.dart';
import '../../controllers/user_profile_controller.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key? key,
    required this.name,
    required this.controller,
    required this.authController,
  }) : super(key: key);

  final String? name;
  final UserProfileController controller;
  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: SingleChildScrollView(
        child: Column(
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
            Text(
              'Selamat Datang $name',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              indent: 30,
              thickness: 0.8,
              color: Color(0xffC4C4C4),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.FAQ);
              },
              title: const Text('FAQ'),
              trailing: const Icon(FontAwesomeIcons.arrowRight),
              leading: const Icon(FontAwesomeIcons.question),
            ),
            const Divider(
              indent: 30,
              thickness: 0.8,
              color: Color(0xffC4C4C4),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.PROFILE_KABINET);
              },
              title: const Text('Profile Kabinet'),
              trailing: const Icon(FontAwesomeIcons.arrowRight),
              leading: const Icon(FontAwesomeIcons.peopleGroup),
            ),
            const Divider(
              indent: 30,
              thickness: 0.8,
              color: Color(0xffC4C4C4),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                  title: 'Konfirmasi Log Out',
                  content: const Text('Apakah anda yakin ingin log out?'),
                  textCancel: 'Batal',
                  textConfirm: 'Ya',
                  onCancel: () {
                    Get.back();
                  },
                  onConfirm: () {
                    authController.logOutUser();
                  },
                );
              },
              title: const Text('Log Out'),
              leading: const Icon(FontAwesomeIcons.rightFromBracket),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              width: Get.width,
              decoration: BoxDecoration(
                color: const Color(0xffFDB731),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.white,
                  ),
                ),
                child: const Text(
                  'Tentang Appsoed',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Get.toNamed(Routes.ABOUT_APPSOED);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
