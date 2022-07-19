import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../auth/auth_controller.dart';

class AnonymProfileWidget extends StatelessWidget {
  const AnonymProfileWidget({
    Key? key,
    required this.authController,
  }) : super(key: key);

  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_xbhffckx.json',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Perlu Login dengan akun email/google...'),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              authController.logOutUser();
            },
            child: const Text('Log Out'),
          )
        ],
      ),
    );
  }
}
