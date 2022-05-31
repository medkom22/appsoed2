import 'package:appsoed/app/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, bottom: 60),
                child: Text(
                  'Notification',
                  style: GoogleFonts.roboto(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset(
                'assets/notification.png',
                width: 297,
                height: 348,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'No Notification Yet!',
                  style: GoogleFonts.roboto(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child: BackButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
