import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailNewsView extends StatelessWidget {
  DetailNewsView({Key? key}) : super(key: key);
  final Map<String, dynamic> data = Get.parameters;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          data['image'] ??
              'https://images.unsplash.com/photo-1479920252409-6e3d8e8d4866?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        ),
      ),
    );
  }
}
