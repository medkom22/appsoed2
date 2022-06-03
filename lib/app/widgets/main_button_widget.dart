import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainButtonWidget extends StatelessWidget {
  final String text;
  const MainButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFDB731),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}