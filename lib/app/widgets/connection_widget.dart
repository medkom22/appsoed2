import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../auth/auth_controller.dart';
import '../modules/home/controllers/home_controller.dart';
import '../routes/app_pages.dart';
import 'content_widget.dart';

// TODO: CONNECTION FAILED

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

// TODO: CONNECTION SUCCESS
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
                  GestureDetector(
                    onTap: () async {
                      Get.toNamed(Routes.NOTIFICATION_VIEW_HOME);
                    },
                    child: Image.asset(
                      'assets/Icon-notifikasi.png',
                      width: 30,
                      height: 30,
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
              children: [
                //NOTE: DARI CONTENT WIDGET
                // MainContentWidget(
                //   onTap: () {
                //     Get.toNamed(Routes.TODOLIST);
                //   },
                //   text: 'To do list',
                //   items: 'tilikfakultas',
                // ),
                MainContentWidget(
                  items: 'tilikfakultas',
                  text: 'Tilik\nFakultas',
                  onTap: () {
                    Get.toNamed(Routes.FAKULTAS);
                  },
                ),

                MainContentWidget(
                  items: 'layananunsoed',
                  text: 'Layanan\nUnsoed',
                  onTap: () {
                    Get.toNamed(Routes.LAYANAN_UNSOED);
                  },
                ),
                MainContentWidget(
                  items: 'infoukm',
                  text: 'Info UKM',
                  onTap: () {
                    Get.toNamed(Routes.INFO_UKM);
                  },
                ),
                MainContentWidget(
                  items: 'komik',
                  text: 'Komik',
                  onTap: () {
                    Get.toNamed(Routes.KOMIK);
                  },
                ),
                MainContentWidget(
                  text: 'Media\nPartner',
                  items: 'mediapartner',
                  onTap: () {
                    Get.toNamed(Routes.MEDIA_PARTNER);
                  },
                ),
              ],
            ),

            // NOTE: END MAIN CONTENT =============
          ],
        ),
      ),
    );
  }
}
