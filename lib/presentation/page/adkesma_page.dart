import 'package:appsoed/common/constant.dart';
import 'package:flutter/material.dart';

class AdkesmaPage extends StatelessWidget {
  const AdkesmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Ayo sampaikan\nAspirasimu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff373737),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/adkesma.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.contain,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 24, 30, 100),
                  child: Text(
                    'Disini kamu bisa mengutarakan, keluhan, ataupun saran mengenai masalah UKT, Beasiswa, Kebijakan kampus, dan Fasilitas Kampus',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: medium,
                      color: blackColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orangeColor.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    label: Text(
                      'Live Chat',
                      style: TextStyle(
                        fontWeight: bold,
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
