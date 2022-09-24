import 'package:appsoed/common/constant.dart';
import 'package:appsoed/domain/model/food_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailFoodPage extends StatelessWidget {
  const DetailFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    FoodModel argument =
        ModalRoute.of(context)!.settings.arguments as FoodModel;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InteractiveViewer(
              minScale: 0.1,
              maxScale: 5.0,
              child: CachedNetworkImage(
                imageUrl: argument.image.toString(),
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: greenColor,
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              child: const Text('Pesan melalui Wa'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
