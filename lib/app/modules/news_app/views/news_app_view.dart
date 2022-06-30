import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/news_app_controller.dart';

class NewsAppView extends GetView<NewsAppController> {
  const NewsAppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsAppView'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  return ListTile(
                    title: Text(document['title']),
                    subtitle: Text(document['description']),
                  );
                }).toList(),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
          stream: controller.documentStream),
    );
  }
}
