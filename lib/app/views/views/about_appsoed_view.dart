import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AboutAppsoedView extends GetView {
  const AboutAppsoedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Tentang',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/appsoed-logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
