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
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(snapshot.data[index].data()['name']);
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
