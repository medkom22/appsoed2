import 'dart:async';
import 'package:appsoed/app/views/views/login_screen.dart';
import './login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
            ),
            Image.asset(
              'assets/appsoed-logo.png',
              width: 140,
              height: 140,
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Appsoed Pro',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff373737,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                'BEM UNSOED',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xff373737,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                'Media Komunikasi dan Informasi',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Color(
                    0xff373737,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
