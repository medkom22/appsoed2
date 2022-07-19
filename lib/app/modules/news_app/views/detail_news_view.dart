import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/back_button_widget.dart';
import '../../../widgets/social_widget.dart';

class DetailNewsView extends StatelessWidget {
  final String title, image, penulis, tanggal, deskripsi;
  const DetailNewsView(
      {Key? key,
      required this.deskripsi,
      required this.image,
      required this.penulis,
      required this.tanggal,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(
                top: 150,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  // NOTE: TITLE CONTENT
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      fit: BoxFit.cover,
                      height: 205,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    tanggal,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff373737),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Penulis : $penulis',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff373737),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: END CONTENT ===========

                  // NOTE: MEDIA SOCIAL OF BEM
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Media Sosial',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff373737),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
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
                  // NOTE: END MEDIA SOCIAL BEM ============
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            // NOTE: END White Background =======

            // NOTE: TOP CONTENT
            Container(
              margin: const EdgeInsets.only(top: 24),
              alignment: Alignment.topCenter,
              child: const Text(
                'Titik Pijar News',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
