import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  var isVisible = true.obs;
  @override
  void onClose() {
    emailC.text = '';
    passC.text = '';
    super.onClose();
  }
}
