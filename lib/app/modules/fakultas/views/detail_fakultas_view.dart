import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/views/views/profile_kabinet_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import '../../provider/launcer_provider.dart';
//import 'package:appsoed/back_button_widget.dart';

/*void main(){
  runApp(DetailFakultasView());
}*/

class DetailFakultasView extends GetView {
  FakultasModel fakultas = Get.arguments;
  DetailFakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail Fakultas',
      theme : ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Detail Fakultas'),),
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
                  height: Get.height * 7 /8,
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
                  shrinkWrap : true,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //TITLE FAKULTAS
                     Text(
                      '${fakultas.title}',
                      textAlign: TextAlign.center,
                      style : TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
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
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff505050),
                              wordSpacing: 10,
                            ),
                          ),
                          //END OF DESKRIPSI FAKULTAS

                          //BARIS MEDIA SOSIAL FAKULTAS
                          Container(
                            margin:  EdgeInsets.only(top: 28, bottom: 50),
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
                                    SocialWidget(
                                      image: 'Instagram', 
                                      link: '${fakultas.instagram}'
                                    ),
                                    SocialWidget(
                                      image: 'YouTube', 
                                      link: ''
                                    ),
                                    SocialWidget(
                                      image: 'Line', 
                                      link: ''
                                    ),
                                    SocialWidget(
                                      image: 'Twitter', 
                                      link: ''
                                    ),
                                     SocialWidget(
                                      image: 'Spotify', 
                                      link: ''
                                    ),
                                     SocialWidget(
                                      image: 'TikTok', 
                                      link: ''
                                    ),
                                    SocialWidget(
                                      image: 'Website', 
                                      link: '${fakultas.website}'
                                    ),
                                  ],
                                )
                              ],
                            )
                          ),
                          //END OF MEDIA SOSIAL FAKULTAS

                          //LOKASI FAKULTAS
                          Container(
                            margin: 
                              const EdgeInsets.only(top: 28, bottom: 50),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lokasi',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                        fakultas.imageLocation.toString(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                          //END OF LOKASI FAKULTAS

                          //GALERI FAKULATAS
                          Container(
                            margin: 
                              const EdgeInsets.only(top: 28, bottom: 50),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Galeri',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                        fakultas.gallery.toString(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          )
                          //END OF GALERI FAKULTAS
                        ],
                      ),
                    )
                  ],
                )
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
                    fontSize: 18,
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
      /*onTap: () {
        LauncherProvider.launcherURL(link);
      },*/
      child: Image.asset(
        'assets/$image.png',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}

