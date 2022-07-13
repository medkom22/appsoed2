import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/news_app_controller.dart';

class NewsAppView extends GetView<NewsAppController> {
  const NewsAppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: controller.getNews(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List data = snapshot.data;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  final doc = data[index];
                  return Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.network(
                          doc['image'].toString(),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            Text(
                              'Judul: ${doc['title']}',
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Penulis : ${doc['penulis']}',
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
