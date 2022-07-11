import 'package:appsoed/app/modules/komik/model/komik_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailKomikView extends StatelessWidget {
  KomikModel data = Get.arguments;
  DetailKomikView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailKomikView'),
        centerTitle: true,
      ),
      body: ListView(
        children: data.imageList
            .map(
              (e) => Image.asset(e),
            )
            .toList(),
      ),
    );
  }
}
