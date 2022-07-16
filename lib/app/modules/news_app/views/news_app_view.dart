import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/news_app_controller.dart';

class NewsAppView extends GetView<NewsAppController> {
  const NewsAppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Titik Pijar News'),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Press Release',
              ),
              Tab(
                text: 'Weekly Report',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              NewsCustomWidget(controller: controller.getPress()),
              NewsCustomWidget(controller: controller.getWeekly()),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: WIDGET FOR NEWS APP
class NewsCustomWidget extends StatelessWidget {
  final Future controller;
  const NewsCustomWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CachedNetworkImage(
                        imageUrl: snapshot.data[index]['image'],
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data[index]['title'],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Text(
                                snapshot.data[index]['tanggal'],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
