import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../auth/auth_controller.dart';
import '../modules/home/controllers/home_controller.dart';
import '../routes/app_pages.dart';

/// The HomeWidget class is a StatelessWidget that has a HomeController and an AuthController as a
/// dependency

class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);

  final authController = Get.find<AuthController>();
  final controller = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
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

    // * NAME USER :
    List<String>? user = authController.auth.currentUser?.email?.split('@');
    String? name = user?.first;
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
              imageSliders: imageSliders);
        }
      },
    );
  }
}

/// I have a carousel slider that is wrapped in a column, and the column is wrapped in a
/// singlechildscrollview, and the singlechildscrollview is wrapped in a safearea

class WidgetConnectionSuccess extends StatelessWidget {
  const WidgetConnectionSuccess({
    Key? key,
    required this.authController,
    required this.name,
    required this.controller,
    required this.imageSliders,
  }) : super(key: key);

  final AuthController authController;
  final HomeController controller;
  final List<Widget> imageSliders;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // NOTE: WELCOME USER AND NOTIFICATION ICON
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Selamat datang,\n${authController.auth.currentUser!.isAnonymous ? "User" : name}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Badge(
                    alignment: Alignment.topRight,
                    shape: BadgeShape.circle,
                    badgeContent: const Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    badgeColor: const Color(0xffF8A435),
                    child: GestureDetector(
                      onTap: () async {
                        Get.toNamed(Routes.NOTIFICATION_VIEW_HOME);
                      },
                      child: Image.asset(
                        'assets/Icon-notifikasi.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // NOTE: END WELCOME USER AND NOTIFICATION ICON ==============

            // NOTE: CAROUSEL SLIDER
            Obx(() {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: CarouselSlider(
                      carouselController: controller.carouselController,
                      items: imageSliders,
                      options: CarouselOptions(
                        initialPage: controller.currentSlider.value,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: controller.onPageChangeSlider,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.imgList
                        .asMap()
                        .entries
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              controller.carouselController
                                  .animateToPage(e.key);
                            },
                            child: Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 4,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                  controller.currentSlider.value == e.key
                                      ? 0.9
                                      : 0.4,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                ],
              );
            }),
            // NOTE: END CAROUSEL SLIDER =========

            // NOTE : MAIN CONTENT

            Wrap(
              runSpacing: 22,
              spacing: 20,
              children: const [
                MainContentWidget(
                  items: 'emagz',
                  text: 'E-Magz',
                ),
                MainContentWidget(
                  items: 'tilikfakultas',
                  text: 'Tilik\nFakultas',
                ),
                MainContentWidget(
                  items: 'binggo',
                  text: 'Binggo',
                ),
                MainContentWidget(
                  text: 'Data At\nUnsoed',
                  items: 'dataatunsoed',
                ),
                MainContentWidget(
                  items: 'layananunsoed',
                  text: 'Layanan\nUnsoed',
                ),
                MainContentWidget(
                  items: 'infoukm',
                  text: 'Info UKM',
                ),
                MainContentWidget(
                  items: 'komik',
                  text: 'Komik',
                ),
                MainContentWidget(
                  text: 'Media\nPartner',
                  items: 'mediapartner',
                ),
              ],
            )
            // NOTE: END MAIN CONTENT =============

            //NOTE: EVENT
          ],
        ),
      ),
    );
  }
}

/// This class is a stateless widget that returns a center widget with a Lottie animation that is the
/// width of the screen and 300 pixels high

class WidgetConnectionFailed extends StatelessWidget {
  const WidgetConnectionFailed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/no-internet.json',
        width: Get.width,
        height: 300,
      ),
    );
  }
}

/// It's a stateless widget that takes two required parameters, text and items, and displays them in a
/// column

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    Key? key,
    required this.text,
    required this.items,
  }) : super(key: key);

  final String items;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: 60,
            width: 60,
            child: Card(
              elevation: 4,
              color: const Color(0xffFDB731),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  'assets/Icon-$items.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
