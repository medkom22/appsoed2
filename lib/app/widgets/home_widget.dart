import 'package:appsoed/app/auth/auth_controller.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../modules/home/controllers/home_controller.dart';

class HomeWidget extends StatelessWidget {
  final controller = Get.put(HomeController(), permanent: true);
  final authController = Get.find<AuthController>();

  HomeWidget({Key? key}) : super(key: key);
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
    List<String> user = authController.auth.currentUser!.email!.split('@');
    String name = user.first;
    print("USER : ${authController.auth.currentUser}");
    return StreamBuilder<ConnectivityResult>(
      stream: controller.connectivity.onConnectivityChanged,
      builder: (context, snapshot) {
        ConnectivityResult? data = snapshot.data;

        if (data == null || data == ConnectivityResult.none) {
          return const WidgetConnectionFailed();
        } else {
          return WidgetConnectionSuccess(
              authController: authController,
              name: name,
              controller: controller,
              imageSliders: imageSliders);
        }
      },
    );
  }
}

class WidgetConnectionSuccess extends StatelessWidget {
  const WidgetConnectionSuccess({
    Key? key,
    required this.authController,
    required this.name,
    required this.controller,
    required this.imageSliders,
  }) : super(key: key);

  final AuthController authController;
  final String name;
  final HomeController controller;
  final List<Widget> imageSliders;

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
                        // FIXME TESTING SIGNOUT
                        await authController.logOutUser();
                        // Get.toNamed(Routes.NOTIFICATION_VIEW_HOME);
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

class MainContentWidget extends StatelessWidget {
  final String items;
  final String text;
  const MainContentWidget({
    Key? key,
    required this.text,
    required this.items,
  }) : super(key: key);

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
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Color(0xff373737),
          ),
        )
      ],
    );
  }
}
