import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  var isPassword = true.obs;

  //dispose controller
  @override
  void dispose() {
    super.dispose();
    emailC.dispose();
    passC.dispose();
  }
}
