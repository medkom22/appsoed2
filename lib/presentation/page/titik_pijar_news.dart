import 'package:appsoed/common/constant.dart';
import 'package:appsoed/presentation/provider/cloud_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/item_news_widget.dart';

class TitikPijarNews extends StatelessWidget {
  const TitikPijarNews({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CloudNotifier>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Titik Pijar News'),
          centerTitle: true,
          foregroundColor: blackColor,
          backgroundColor: whiteColor,
          bottom: TabBar(
            labelColor: blackColor,
            tabs: const [
              Tab(
                text: 'Press Release',
              ),
              Tab(
                text: 'Weekly Report',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ItemNewsWidget(provider: provider.getPress()),
            ItemNewsWidget(provider: provider.getWeekly()),
          ],
        ),
      ),
    );
  }
}
