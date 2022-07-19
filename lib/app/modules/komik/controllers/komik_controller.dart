import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/komik_model.dart';

class KomikController extends GetxController {
  Future getDataLocal(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/data/data_komik.json');
    final List body = json.decode(data)['data'];
    return body.map((e) => KomikModel.fromMap(e)).toList();
  }
}
