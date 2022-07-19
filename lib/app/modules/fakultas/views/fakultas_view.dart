import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:appsoed/back_button_widget.dart';

import '../controllers/fakultas_controller.dart';

class FakultasView extends GetView<FakultasController> {
  const FakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // NOTE:BACKGROUND COLOR ORANGE AND YELLOW
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
            //NOTE : END OF BACKGROUND COLOR ORANGE AND YELLOW

            //NOTE : WHITE BACKGOUND CONTAINING CONTENT
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
              //NOTE : BUTTON FAKULTAS
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 20, left: 13, right: 13, bottom: 20),
                shrinkWrap: true,
                itemCount: dataFakultas.length,
                itemBuilder: (BuildContext context, int index) {
                  FakultasModel fakultas = dataFakultas[index];
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: const Color(0xffFDB731),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        fakultas.title!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.DETAIL_FAKULTAS, arguments: fakultas);
                    },
                  );
                },
              ),
              // NOTE : END OF BUTTON
            ),
            //NOTE : END OF WHITE BACKGROUND

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
            ),
            /*const Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child: BackButtonWidget(),
              ),*/
          ],
        ),
      ),
    );
  }
}
