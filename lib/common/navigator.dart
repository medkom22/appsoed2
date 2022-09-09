import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static void push(Widget page) async {
    navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
