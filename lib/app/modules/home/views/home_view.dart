import '../../../widgets/live_chat_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/home_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<Widget> widgetMenuPages = [
    HomeWidget(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.lightBlue,
    ),
    const LiveChatWidget(),
    Container(
      color: Colors.cyan,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NOTE: BOTTOM NAVIGATION BAR
      bottomNavigationBar: Obx(() {
        return CurvedNavigationBar(
          animationCurve: Curves.easeInToLinear,
          color: const Color(0xffD8D8D8).withOpacity(0.5),
          buttonBackgroundColor: Colors.amber,
          index: controller.currentBottom.value,
          onTap: controller.onPageChangeBottom,
          backgroundColor: Colors.white,
          height: 50,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: controller.currentBottom.value == 0
                  ? Colors.white
                  : const Color(0xffFDB731),
            ),
            Icon(
              Icons.newspaper,
              size: 30,
              color: controller.currentBottom.value == 1
                  ? Colors.white
                  : const Color(0xffFDB731),
            ),
            Icon(
              Icons.shopping_bag,
              size: 30,
              color: controller.currentBottom.value == 2
                  ? Colors.white
                  : const Color(0xffFDB731),
            ),
            Icon(
              Icons.comment,
              size: 30,
              color: controller.currentBottom.value == 3
                  ? Colors.white
                  : const Color(0xffFDB731),
            ),
            Icon(
              Icons.person,
              size: 30,
              color: controller.currentBottom.value == 4
                  ? Colors.white
                  : const Color(0xffFDB731),
            ),
          ],
        );
      }),

      body: Obx(() {
        return widgetMenuPages.elementAt(controller.currentBottom.value);
      }),
    );
  }
}
