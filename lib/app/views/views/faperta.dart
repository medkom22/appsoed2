import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:appsoed/back_button_widget.dart';

void main() {
  runApp(FapertaView());
}

class FapertaView extends GetView {
  const FapertaView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tampilan Laman Faperta',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text("Fakultas Pertanian")
        ),

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
                  color: const Color(0xffFFFA78).withOpacity(0.50),
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
                  const Text(
                    'Fakultas Pertanian',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                      children: const [
                        Text(
                          'Fakultas Pertanian Universitas Jenderal Soedirman (UNSOED) merupakan salah satu lembaga pendidikan tinggi negeri yang terletak di Purwokerto, Propinsi Jawa Tengah. Lembaga pendidikan tinggi di ibukota Kabupaten Banyumas merupakan fakultas tertua dan terbanyak memiliki program studi.\n',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          'Pada saat ini terdapat 4 jurusan dengan 8 program studi S1, 3 program D3, 2 program alih jenjang dan 1 program S2. Sesuai dengan SK Mendiknas No. 045/U/2002 maka Fakultas Pertanian UNSOED menerapkan kurikulum berbasis kompetensi.\n',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          'Penerapan kurikulum tersebut menuntut ketersediaan sumberdaya manusia, sarana dan prasarana dan berbagai fasilitas penunjang yang memadai, baik secara kuantitatif maupun kualitatif.\n',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                        Text(
                          'Berdasarkan kurikulum yang berlaku, diharapkan mahasiswa dapat menyelesaikan studinya dalam waktu 4 tahun untuk program S1, 3 tahun untuk program D3, 2 tahun untuk program alih jenjang dan program S2.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff505050),
                            wordSpacing: 10,
                          ),
                        ),
                      ],
                    ),
              ),
              //END OF DESKRIPSI FAKULTAS

  
                ],
              ),
            ),
            // ====== End White Background =======

            //TITLE DAN BACKBUTTON
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text(
                'Tilik Fakultas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
            /*const Padding(
              padding: EdgeInsets.only(top: 24, left: 24),
              child: BackButtonWidget(),
            ),*/
          ],
        ),
      ),
    )
    );
  }
}