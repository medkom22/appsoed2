import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'app/auth/auth_controller.dart';
import 'app/modules/user_profile/bindings/user_profile_binding.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  //* FUNCTION TO PORTRAIT UP APP
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

/// MyApp is a StatelessWidget that extends GetMaterialApp and has a build method that returns
/// GetMaterialApp.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final authController = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: UserProfileBinding(),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 600),
      debugShowCheckedModeBanner: false,
      title: 'Appsoed Pro',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
