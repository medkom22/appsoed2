import 'package:appsoed/app/modules/fakultas/model/fakultas_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailFakultasView extends GetView {
  FakultasModel fakultas = Get.arguments;
  DetailFakultasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailFakultasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${fakultas.title}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
