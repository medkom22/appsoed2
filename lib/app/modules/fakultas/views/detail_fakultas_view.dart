import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/provider/launcer_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/social_widget.dart';

class DetailFakultasView extends GetView {
  FakultasModel fakultas = Get.arguments;
  DetailFakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //NOTE : BACKGROUND COLOR ORANGE AND YELLOW
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
                  color: const Color(0xffFFFA78).withOpacity(0.50),
                ),
              ),
            ),
            // NOTE : END OF BACKGROUND COLOR ORANGE AND YELLOW

            //NOTE : WHITE BACKGROUND CONTAINING CONTENT
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
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //TITLE FAKULTAS
                  Text(
                    '${fakultas.title}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff373737),
                    ),
                  ),
                  const Divider(
                    color: Color(0xff373737),
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                  ),
                  //END OF TITLE FAKULTAS

                  //DESKRIPSI FAKULTAS
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 28,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '${fakultas.description}',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff373737),
                            wordSpacing: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        //END OF DESKRIPSI FAKULTAS

                        //BARIS MEDIA SOSIAL FAKULTAS
                        Container(
                          margin: const EdgeInsets.only(top: 28, bottom: 50),
                          child: Column(
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
                                spacing: 8,
                                children: [
                                  SocialWidget(
                                      image: 'Instagram',
                                      link: '${fakultas.instagram}'),
                                  const SocialWidget(
                                      image: 'YouTube', link: ''),
                                  const SocialWidget(image: 'Line', link: ''),
                                  const SocialWidget(
                                      image: 'Twitter', link: ''),
                                  const SocialWidget(
                                      image: 'Spotify', link: ''),
                                  const SocialWidget(image: 'TikTok', link: ''),
                                  SocialWidget(
                                    image: 'Website',
                                    link: '${fakultas.website}',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        //END OF MEDIA SOSIAL FAKULTAS

                        //LOKASI FAKULTAS
                        Container(
                          margin: const EdgeInsets.only(top: 28, bottom: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Lokasi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff373737),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  LauncherProvider.launcherURL(
                                      '${fakultas.lokasi}');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                        fakultas.imageLocation!,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        //END OF LOKASI FAKULTAS

                        //GALERI FAKULATAS
                        Container(
                          margin: const EdgeInsets.only(top: 28, bottom: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Galeri',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff373737),
                                ),
                              ),
                              SizedBox(
                                height: 300,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: fakultas.gallery!.map((e) {
                                    return Image.asset(
                                      e,
                                      width: 300,
                                      fit: BoxFit.contain,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        )
                        //END OF GALERI FAKULTAS
                      ],
                    ),
                  )
                ],
              ),
            ),
            //END OF WHITE BACKGROUND

            //TITLE AND BACKBUTTON
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: const Text(
                'Tilik Fakultas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              /*Padding(
                  padding: EdgeInsets.only(top: 24, left:24),
                  child: BackButtonWidget(),
                ),*/
            ),
          ],
        ),
      ),
    );
  }
}
