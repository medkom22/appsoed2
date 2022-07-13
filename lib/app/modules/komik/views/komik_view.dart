import 'package:appsoed/app/modules/komik/model/komik_model.dart';
import 'package:appsoed/app/modules/komik/views/detail_komik_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/komik_controller.dart';

class KomikView extends GetView<KomikController> {
  const KomikView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KomikView'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: controller.getDataLocal(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                KomikModel data = snapshot.data[index];
                return GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Get.to(
                      () => DetailKomikView(),
                      arguments: data,
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          data.image,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}