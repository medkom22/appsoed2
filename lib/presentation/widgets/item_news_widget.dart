import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../domain/model/news_model.dart';

class ItemNewsWidget extends StatelessWidget {
  final Stream<List<DocumentSnapshot<Object?>>> provider;
  const ItemNewsWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: provider,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
              height: 20,
            ),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              NewsModel data = NewsModel.fromMap(snapshot.data[index].data());

              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: CachedNetworkImage(
                          imageUrl: data.image.toString(),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
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
                              data.title.toString(),
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
                                  data.tanggal.toString(),
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
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
