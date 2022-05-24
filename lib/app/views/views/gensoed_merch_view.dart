import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GensoedMerchView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GensoedMerchView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GensoedMerchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
