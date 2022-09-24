import 'package:appsoed/common/navigator.dart';
import 'package:appsoed/domain/model/food_model.dart';
import 'package:appsoed/presentation/page/detail_food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/food_notifier.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FoodNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Page'),
      ),
      body: StreamBuilder(
        stream: provider.getFood(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                FoodModel food = FoodModel.fromMap(snapshot.data[index].data());
                return ListTile(
                  onTap: () {
                    Navigation.pushWithData(
                      const DetailFoodPage(),
                      food,
                    );
                  },
                  title: Text(food.name.toString()),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
