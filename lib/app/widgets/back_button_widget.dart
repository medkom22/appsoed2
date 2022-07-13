import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// It's a Material widget with a white background, a yellow arrow icon, and a circular border
///NOTE: WIDGET UNTUK TOMBOL BACK
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      color: Colors.white,
      elevation: 4,
      child: SizedBox(
        height: 40,
        width: 40,
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xffFDB731),
          ),
        ),
      ),
    );
  }
}
