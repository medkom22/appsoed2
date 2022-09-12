import 'package:appsoed/presentation/page/profile_page.dart';
import 'package:flutter/material.dart';

import '../page/home_page.dart';

class MainNotifier extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  final List<Widget> children = [
    const HomePage(),
    const Scaffold(
      body: Center(
        child: Text('Settings'),
      ),
    ),
    const ProfilePage(),
  ];
}
