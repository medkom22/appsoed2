import 'package:appsoed/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';

import '../page/home_page.dart';

class SignInNotifier extends ChangeNotifier {
  AuthRepository authRepository;
  SignInNotifier({required this.authRepository});
  bool _isSignIn = false;

  bool get isSignIn => _isSignIn;

  Future signInGoogle(context) async {
    await authRepository.signInWithGoogle();
    _isSignIn = true;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
    notifyListeners();
  }
}
