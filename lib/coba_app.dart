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
