import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/komik_model.dart';

class DetailKomikView extends StatelessWidget {
  KomikModel data = Get.arguments;
  DetailKomikView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Komik',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Color(0xff373737),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
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
