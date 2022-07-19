import 'package:appsoed/app/modules/news_app/views/detail_news_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
          title: const Text(
            'Titik Pijar News',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff373737),
            ),
          ),
          centerTitle: true,
          foregroundColor: const Color(0xff373737),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Color(0xff373737),
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
  final Future<List<DocumentSnapshot>> controller;
  const NewsCustomWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DocumentSnapshot>>(
      future: controller,
      builder: (BuildContext context,
          AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
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
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailNewsView(
                          title: snapshot.data![index]['title'],
                          deskripsi: snapshot.data![index]['deskripsi'],
                          image: snapshot.data![index]['image'],
                          penulis: snapshot.data![index]['penulis'],
                          tanggal: snapshot.data![index]['tanggal']),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data![index]['image'],
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
                              snapshot.data![index]['title'],
                              style: const TextStyle(
                                color: Color(0xff373737),
                              ),
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
                                  snapshot.data![index]['tanggal'],
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
                ),
              );
            },
          );
        }
      },
    );
  }
}
