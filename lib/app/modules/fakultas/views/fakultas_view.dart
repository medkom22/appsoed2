import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/fakultas_controller.dart';

class FakultasView extends GetView<FakultasController> {
  const FakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tampilan Awal Tilik Fakultas',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text("Tilik fakultas")),
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
                      // NOTE: BUTTON FAKULTAS
                     ListView.builder(
                      itemCount: dataFakultas.length,
                      itemBuilder: (BuildContext context, int index){
                        FakultasModel fakultas = dataFakultas[index];
                        return ElevatedButton(
                          child: Text(fakultas.title!),
                          onPressed: (){
                            Get.toNamed(Routes.DETAIL_FAKULTAS, arguments: fakultas);
                          },
                        );
                      }
                     )
                    ]
                      
                      //=========END OF BUTTON FAKULTAS==========
                  ),
                ),
                // ====== End White Background =======

                //TITLE DAN BACKBUTTON
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Tilik Fakultas',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                /*const Padding(
              padding: EdgeInsets.only(top: 24, left: 24),
              child: BackButtonWidget(),
            ),*/
              ],
            ),
          ),
        ));
  }
}
