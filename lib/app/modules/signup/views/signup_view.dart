import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewPadding.bottom,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 45,
                    horizontal: 24,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Nama',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
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
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 36),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: const Color(0xffFDB731),
                  ),
                  child: const Text('Sign Up'),
                  onPressed: () {},
                ),
              ),
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
                    Container(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
