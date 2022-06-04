import 'package:appsoed/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get streamAuth => auth.authStateChanges();

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

  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    Get.offAllNamed(Routes.HOME);
  }

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

  Future logOutUser() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.APPSOED_LOGIN);
  }

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

  Future registerUser(String email, String password) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        Get.offAllNamed(Routes.HOME);
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
