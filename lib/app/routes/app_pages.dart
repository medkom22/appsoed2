import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/notification_view.dart';
import '../modules/news_app/bindings/news_app_binding.dart';
import '../modules/news_app/views/detail_news_view.dart';
import '../modules/news_app/views/news_app_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/forgot_password_view.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';
import '../views/views/about_appsoed_view.dart';
import '../views/views/appsoed_login_view.dart';
import '../views/views/faq_view.dart';
import '../views/views/medpart_page_2.dart';
import '../views/views/profile_kabinet_view.dart';
import '../views/views/splash_screen_view.dart';

part 'app_routes.dart';

// NOTE: File ini digunakan untuk mengatur arus navigasi dari applikasi
class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
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
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreenView(),
    ),
    GetPage(
      name: Routes.APPSOED_LOGIN,
      page: () => AppsoedLoginView(),
    ),
    GetPage(
      name: Routes.NOTIFICATION_VIEW_HOME,
      page: () => const NotificationView(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: Routes.FAQ,
      page: () => const FaqView(),
    ),
    GetPage(
      name: Routes.RULES_MEDIA,
      page: () => const RulesMediaView(),
    ),
    GetPage(
      name: _Paths.NEWS_APP,
      page: () => const NewsAppView(),
      binding: NewsAppBinding(),
    ),
    GetPage(
      name: Routes.DETAIL_NEWS,
      page: () => DetailNewsView(),
    ),
  ];
}
