import 'package:appsoed/app/provider/launcer_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LiveChatWidget extends StatelessWidget {
  const LiveChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_78obvmke.json',
                  frameBuilder: (context, child, composition) {
                    if (composition != null) {
                      return child;
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                  width: double.infinity - (2 * 24),
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 24, 30, 100),
                  child: const Text(
                    'Disini kamu bisa mengutarakan, keluhan, ataupun saran mengenai masalah UKT, Beasiswa, Kebijakan kampus, dan Fasilitas Kampus',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFDB731),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      LauncherProvider.launcherURL('tel:089691944030');
                    },
                    icon: const Icon(Icons.message),
                    label: const Text('Live Chat'),
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