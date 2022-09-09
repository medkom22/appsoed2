import 'package:appsoed/common/constant.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/main_notifier.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainNotifier>(context);
    return Scaffold(
      body: provider.children[provider.currentIndex],
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: provider.currentIndex,
        backgroundColor: orangeColor,
        color: blackColor,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.chat_bubble, title: 'Menfess'),
        ],
        onTap: provider.changeIndex,
      ),
    );
  }
}
