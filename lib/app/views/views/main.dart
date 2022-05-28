import 'package:appsoed/app/views/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appsoed Pro',
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
