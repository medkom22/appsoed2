import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/fakultas_controller.dart';

void main(){
  runApp(FakultasView());
}

class FakultasView extends GetView<FakultasController> {
  const FakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Tilik Fakultas',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home : Scaffold(
        appBar: AppBar(
          title: const Text('FakultasView'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: dataFakultas.length,
          itemBuilder: (BuildContext context, int index) {
            FakultasModel fakultas = dataFakultas[index];
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                shape : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: const Color(0xffFDB731),
              ),
              child:  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      fakultas.title!,
                      style: TextStyle(
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
      )
    );     
  }
}
