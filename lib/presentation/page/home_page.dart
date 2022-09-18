import 'package:appsoed/common/constant.dart';
import 'package:appsoed/common/navigator.dart';
import 'package:appsoed/presentation/page/adkesma_page.dart';
import 'package:appsoed/presentation/page/jokes_page.dart';
import 'package:appsoed/presentation/page/titik_pijar_news.dart';
import 'package:appsoed/presentation/page/todo_page.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _headerContent(),
            _carouselContent(),
            _itemContent(),
          ],
        ),
      ),
    );
  }

  _headerContent() {
    return Container(
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
        top: 30,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Selamat Datang',
            style: TextStyle(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.home,
            size: 36,
            color: blackColor,
            semanticLabel: 'Home',
          ),
        ],
      ),
    );
  }

  _carouselContent() {
    return const Placeholder(
      fallbackHeight: 300,
    );
  }

  _itemContent() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 24,
        right: 24,
      ),
      child: Wrap(
        spacing: 16,
        runSpacing: 18,
        children: [
          ItemWidget(
            icon: Icons.newspaper,
            onPress: () {
              Navigation.push(
                const TitikPijarNews(),
              );
            },
            text: 'Titik Pijar\nNews',
          ),
          ItemWidget(
            icon: Icons.emoji_emotions,
            onPress: () {
              Navigation.push(
                const JokesPage(),
              );
            },
            text: 'Jokes ',
          ),
          ItemWidget(
            icon: Icons.chat_bubble,
            onPress: () {
              Navigation.push(
                const AdkesmaPage(),
              );
            },
            text: 'Adkesma\nChat',
          ),
          ItemWidget(
            icon: Icons.assignment,
            onPress: () {
              Navigation.push(
                TodoPage(),
              );
            },
            text: 'TodoList',
          ),
          ItemWidget(
            icon: Icons.shopping_cart,
            onPress: () {},
            text: 'Merchant',
          )
        ],
      ),
    );
  }
}
