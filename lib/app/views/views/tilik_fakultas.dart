import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:appsoed/back_button_widget.dart';

void main() {
  runApp(TilikFakultasView());
}

class TilikFakultasView extends GetView {
  const TilikFakultasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tampilan Awal Tilik Fakultas',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text("Tilik fakultas")
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
                  // NOTE: BUTTON FAKULTAS
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 28,
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Pertanian',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {},

                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Biologi',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Ekonomi dan Bisnis',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),
                        
                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Hukum',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Ilmu Sosial dan Ilmu Politik',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Kedokteran',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Teknik',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Ilmu-Ilmu Kesehatan',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Ilmu Budaya',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas MIPA',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),

                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Perikanan dan Ilmu Kelautan',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),
                        
                        new SizedBox(
                          //width: 550,
                          //height: 40,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: const Color(0xffFDB731),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fakultas Peternakan',
                              style: TextStyle(color : Colors.white,),
                            ),
                            ),
                            onPressed: () {}
                          ),
                        ),
                      ],

                    ),
                  ),
                  //=========END OF BUTTON FAKULTAS==========
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
