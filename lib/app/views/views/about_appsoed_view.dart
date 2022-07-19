import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A class that displays the About Appsoed page.

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/appsoed-logo.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Appsoed Pro 2.0',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff373737),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: CONTENT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Apa itu Apppsoed Pro',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff373737),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Appsoed Pro adalah platform yang bertujuan untuk  mengintegrasikan sumber daya informasi seputar dunia perkuliahan, fasilitas kampus, kebijakan universitas, berkas administratif, arsip data, serta sarana menyampaikan aspirasi, kritik, keluhan yang ada di  Universitas Jenderal Soedirman demi memberikan kenyamanan kepada mahasiswa dan terwujudnya Kampus Universitas Jenderal Soedirman yang lebih baik.\n\n',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff373737),
                        ),
                      ),
                      Text(
                        'Dikembangkan dan dikelola oleh : ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff373737),
                        ),
                      ),
                      Text(
                        'Kementerian Media Komunikasi dan Informasi Universitas Jenderal Soedirman',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff373737),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'version 2.0',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9A9A9A),
                      ),
                    ),
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
