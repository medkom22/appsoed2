import 'package:appsoed/common/constant.dart';
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
      backgroundColor: whiteColor,
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
                style: TextStyle(
                  fontSize: 12,
                  color: greyColor,
                ),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                newsModel.title.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: bold,
                  color: blackColor,
                ),
              ),
              Divider(
                color: greyColor,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Penulis : ${newsModel.penulis}',
                style: TextStyle(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                newsModel.deskripsi.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: light,
                  color: blackColor,
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
