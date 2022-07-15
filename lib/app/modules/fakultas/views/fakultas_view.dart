import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:appsoed/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/fakultas_controller.dart';

class FakultasView extends GetView<FakultasController> {
  const FakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FakultasView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dataFakultas.length,
        itemBuilder: (BuildContext context, int index) {
          FakultasModel fakultas = dataFakultas[index];
          return ElevatedButton(
            child: Text(fakultas.title!),
            onPressed: () {
              Get.toNamed(Routes.DETAIL_FAKULTAS, arguments: fakultas);
            },
          );
        },
      ),
    );
  }
}
