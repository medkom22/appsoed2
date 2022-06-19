import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/auth_controller.dart';

class ForgotPasswordView extends GetView {
  ForgotPasswordView({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Oops! Input your email address to fix the issue',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff979797),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: const Color(0xffFDB731),
                ),
                child: const Text('Submit'),
                onPressed: () {
                  authController.forgotPassword(emailController.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
