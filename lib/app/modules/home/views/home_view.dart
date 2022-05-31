import 'package:appsoed/app/routes/app_pages.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/S3.png',
    'assets/PORSOED.png',
    'assets/nyala_desa.png',
    'assets/FOSA.png',
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<Widget> imageSliders = imgList
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
    return Scaffold(
      body: SafeArea(
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
                  const Text(
                    'Selamat datang,\nNama User!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Badge(
                    alignment: Alignment.topRight,
                    shape: BadgeShape.circle,
                    badgeContent: const Text(
                      '200',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    badgeColor: const Color(0xffF8A435),
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
                        initialPage: controller.current.value,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: controller.onPageChange,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList
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
                                  controller.current.value == e.key ? 0.9 : 0.4,
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

            Center(
              child: ElevatedButton(
                child: const Text('Go To Code'),
                onPressed: () {
                  Get.toNamed(Routes.NOTIFICATION_VIEW);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
