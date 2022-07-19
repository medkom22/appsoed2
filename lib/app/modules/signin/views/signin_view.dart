import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/main_button_widget.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  SigninView({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // NOTE: LOGO APP AND TEXT SIGN-IN
              const SizedBox(
                height: 90,
              ),
              Center(
                child: Image.asset(
                  'assets/appsoed-logo.png',
                  width: 104,
                  height: 104,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //NOTE: END LOGO APP AND TEXT SIGN-IN =========

              //NOTE: TEXTFIELD AND FORGOT PASSWORD
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context)
                      .viewPadding
                      .bottom, //NOTE SOLVE: a Close Textfield Keyboard
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 45,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      TextField(
                        controller: controller.emailC,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(
                        () => TextField(
                          controller: controller.passC,
                          obscureText: controller.isPassword.value,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isPassword.value =
                                    !controller.isPassword.value;
                              },
                              icon: Icon(
                                controller.isPassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.FORGOT_PASSWORD);
                        },
                        child: const Text(
                          'Forgot password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Color(0xffDB1F1F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //NOTE: END TEXTFIELD AND FORGOT PASSWORD =========
              // NOTE: BUTTON SIGN-IN
              MainButtonWidget(
                  text: 'Sign In',
                  navigator: () {
                    authController.signInUser(
                      controller.emailC.text,
                      controller.passC.text,
                    );
                  }),
              // NOTE: END BUTTON SIGN-IN =========

              // NOTE: SIGN IN WITH GOOGLE ACCOUNT
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 55,
                  horizontal: 36,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 8,
                            ),
                            child: Divider(
                              color: Color(0xffC4C4C4),
                              thickness: 1,
                            ),
                          ),
                        ),
                        Text(
                          'atau masuk dengan',
                          style: TextStyle(
                            color: Color(
                              0xff979797,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                            ),
                            child: Divider(
                              color: Color(0xffC4C4C4),
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    GestureDetector(
                      onTap: () {
                        authController.signInWithGoogle();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff979797),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: Get.width,
                        height: 45,
                        child: Center(
                          child: Image.asset(
                            'assets/google-logo.png',
                            width: 28,
                            height: 28,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // NOTE:END SIGN IN WITH GOOGLE ACCOUNT ==========

// NOTE: REGISTER ACCOUNT
              Text.rich(
                TextSpan(
                  text: 'Belum memiliki akun? ',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff979797),
                  ),
                  children: [
                    TextSpan(
                        text: ' Daftar Sekarang',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xffFDB731),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.SIGNUP);
                          })
                  ],
                ),
              ),
// NOTE: END REGISTER ACCOUNT ===========

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
