import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static void pushReplacement(Widget page) async {
    navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static void push(Widget page) async {
    navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static void back() {
    navigatorKey.currentState!.pop();
  }
}
