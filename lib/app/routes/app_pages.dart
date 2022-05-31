import 'package:appsoed/app/views/views/about_appsoed_view.dart';
import 'package:appsoed/app/views/views/notification_no.dart';

import '../modules/signin/views/forgot_password_view.dart';

import '../views/views/profile_kabinet_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.PROFILE_KABINET,
      page: () => const ProfileKabinetView(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
    ),
    GetPage(
      name: Routes.ABOUT_APPSOED,
      page: () => const AboutAppsoedView(),
    ),
    GetPage(
      name: Routes.NOTIFICATION_VIEW,
      page: () => const NotificationView(),
    ),
  ];
}
