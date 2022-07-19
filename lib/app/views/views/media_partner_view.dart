import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MediaPartnerView extends StatelessWidget {
  const MediaPartnerView({Key? key}) : super(key: key);

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
              height: Get.height,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
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
                  // NOTE: TITLE CONTENT
                  const Text(
                    'Connect with Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 20,
                  ),
                  // NOTE: END TITLE CONTENT ========
                  // NOTE: CONTENT
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 28,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  foregroundColor: Colors.white,
                                  minRadius: 30,
                                  child: IconButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.RULES_MEDIA);
                                    },
                                    icon: const Icon(FontAwesomeIcons.filePdf),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'S&K Medpart',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff373737),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  foregroundColor: Colors.white,
                                  minRadius: 30,
                                  child: Icon(FontAwesomeIcons.upload),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Unggah File',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff373737),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //create textfield name and email
                        TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Nama',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff373737),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff373737),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        //create Widget TextField with maxLines 5
                        const SizedBox(
                          height: 22,
                        ),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Masukkan Pesan...',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff373737),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        //create button send
                        Container(
                          width: Get.width * 0.8,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber,
                          ),
                          child: OutlinedButton.icon(
                            icon: const Icon(
                              FontAwesomeIcons.paperPlane,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            label: const Text(
                              'Kirim',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // NOTE: END CONTENT ===========
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              alignment: Alignment.topCenter,
              child: const Text(
                'Media Partner\nBEM Unsoed',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
