import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileKabinetView extends GetView {
  const ProfileKabinetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color(0xffFDB731),
              width: Get.width,
              height: 200,
            ),
            Positioned(
              right: -(Get.width * 7 / 8) / 3,
              top: -(Get.width * 7 / 8),
              child: Container(
                width: Get.width * 7 / 8,
                height: Get.height * 7 / 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffFFFA78).withOpacity(0.54),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Colors.lightGreen[50],
              ),
              margin: const EdgeInsets.only(
                top: 150,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'KABINET TITIK PIJAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 28,
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Titik merupakan tempat berkumpul. Mendekap satu sama lain menjadi sebuah kesatuan yang tidak terpisahkan. Responsif dalam pergerakan, menebar kebaikan bagi sekitar, juga menemani langkah seraya tumbuh pada tiap derapnya.\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          'Ketika semua cahaya-cahaya berada di satu titik, ia akan menghasilkan nyala yang amat terang. Saling berpijar menciptakan sinar penuh kehangatan yang menerangi dunia.\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          'Kita semua punya cahaya yang tersimpan. Cahaya karya, ketulusan, tanggung jawab, dan kekuatan. Nyalakanlah, buatlah ia berpijar.\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          '“Titik Pijar” hadir sebagai pelita, pemberi kehangatan yang siap bersama menyalakan pijar kebaikan.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Media Sosial',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          spacing: 8,
                          children: [
                            Image.asset(
                              'assets/Instagram.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/YouTube.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/Line.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/Twitter.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/Spotify.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/TikTok.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/Website.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
