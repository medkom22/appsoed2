import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../routes/app_pages.dart';

// NOTE: Ini merupakan file yang mengatur tentang jalannya autentifikasi
class AuthController extends GetxController {
  // *: variabel auth digunakan untuk menginisasi FirebaseAuth
  FirebaseAuth auth = FirebaseAuth.instance;

  // *: variabel streamAuth digunakan untuk menjalakan fungsi authStateChanges yg mana fungsi ini berfungsi untuk mengecek apakah ada user atau tidak
  Stream<User?> get streamAuth => auth.authStateChanges();

// *: Fungsi ini digunakan untuk melakukan reset password apabila lupa password
  Future forgotPassword(String email) async {
    if (email.isNotEmpty) {
      await auth.sendPasswordResetEmail(email: email);
      Get.defaultDialog(
        title: 'Check Email',
        middleText:
            'Tolong check email anda, kami telah mengirimkan pesan dan lakukan reset password',
      );
    }
  }

// *: Fungsi ini digunakan untuk melakukan login dengan akun Google
  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    Get.offAllNamed(Routes.HOME);
  }

// *: Fungsi ini digunakan untuk melakukan login dengan ANONIM
  Future signinAnonym() async {
    try {
      await auth.signInAnonymously();
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          Get.snackbar(
              'Wrong', "Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          Get.snackbar('Wrong', "Unknown error.");
      }
    }
  }

// *:Fungsi ini digunakan untuk melakukan Log Out
  Future logOutUser() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.APPSOED_LOGIN);
  }

// *Fungsi ini digunakan untuk melakukan Sign In email dan password
  Future signInUser(String email, String password) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Get.offAllNamed(Routes.HOME);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar('Wrong', 'No user found for that email.');
        } else if (e.code == 'wrong-password') {
          Get.snackbar('Wrong', 'Wrong password provided for that user.');
        }
      }
    } else {
      Get.defaultDialog(
        title: 'Error',
        middleText: 'Jangan kosongkan email atau password dong',
      );
    }
  }

// *: Fungsi ini digunakan untuk melakukan Registrasi / Sign Up
  Future registerUser(String email, String password) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        Get.back();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar('Wrong', 'The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar('Wrong', 'The account already exists for that email.');
        }
      } catch (e) {
        rethrow;
      }
    } else {
      Get.defaultDialog(
        title: 'Error',
        middleText: 'Jangan kosongkan email atau password dong',
      );
    }
  }
}
