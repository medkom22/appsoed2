import 'package:appsoed/app/provider/launcer_provider.dart';
import 'package:appsoed/app/widgets/back_button_widget.dart';
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
            //NOTE: BACKGROUND COLOR ORANGE AND YELLOW
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
            // NOTE: END ====

            // NOTE: white background containing content
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
                  // NOTE: TITLE CONTENT
                  const Text(
                    'KABINET TITIK PIJAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // NOTE: END TITLE CONTENT ========
                  // NOTE: CONTENT
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
                  // NOTE: END CONTENT ===========

                  // NOTE: MEDIA SOCIAL OF BEM
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
                          children: const [
                            SocialWidget(
                              image: 'Instagram',
                              link: 'https://instagram.com/bem_unsoed',
                            ),
                            SocialWidget(
                              image: 'YouTube',
                              link: 'https://m.youtube.com/c/BEMUnsoed',
                            ),
                            SocialWidget(
                              image: 'Line',
                              link:
                                  'https://liff.line.me/1645278921-kWRPP32q/?accountId=uzf4935f',
                            ),
                            SocialWidget(
                              image: 'Twitter',
                              link: 'https://twitter.com/bem_unsoed',
                            ),
                            SocialWidget(
                                image: 'Spotify',
                                link:
                                    'https://open.spotify.com/show/4G1FeEt60JftSEGSx8uVDt?si=OVf1hSeOQ2iOhATTvyQTFA&utm_source=copy-link'),
                            SocialWidget(
                                image: 'TikTok',
                                link: 'https://vt.tiktok.com/ZSd4JhVah/'),
                            SocialWidget(
                                image: 'Website',
                                link: 'https://apps.bem-unsoed.com/'),
                          ],
                        )
                      ],
                    ),
                  ),
                  // NOTE: END MEDIA SOCIAL BEM ============

                  // NOTE: CONTACT US
                  Container(
                    margin:
                        const EdgeInsets.only(left: 26, top: 28, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kontak Kami',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            primary: const Color(0xffFDB731),
                          ),
                          child: const Text('Email BEM Unsoed'),
                          onPressed: () {
                            LauncherProvider.launcherURL(
                              'mailto:bem.unsoed@gmail.com',
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  // NOTE: END CONTACT US ============
                ],
              ),
            ),
            // NOTE: END White Background =======

            // NOTE: TOP CONTENT
            Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/logo-medkom.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, left: 24),
              child: BackButtonWidget(),
            ),
            // NOTE: END TOP CONTENT ==========
          ],
        ),
      ),
    );
  }
}

class SocialWidget extends StatelessWidget {
  final String image;
  final String link;
  const SocialWidget({
    Key? key,
    required this.image,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LauncherProvider.launcherURL(link);
      },
      child: Image.asset(
        'assets/$image.png',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}