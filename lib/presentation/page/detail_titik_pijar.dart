import 'package:appsoed/domain/model/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailTitikPijar extends StatelessWidget {
  const DetailTitikPijar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NewsModel newsModel =
        ModalRoute.of(context)?.settings.arguments as NewsModel;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 24,
              ),
              Hero(
                tag: newsModel.image.toString(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: newsModel.image.toString(),
                    fit: BoxFit.cover,
                    height: 205,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                newsModel.tanggal.toString(),
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                newsModel.title.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff373737),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Penulis : ${newsModel.penulis}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                newsModel.deskripsi.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff373737),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
