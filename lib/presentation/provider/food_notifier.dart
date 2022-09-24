import 'package:appsoed/data/repository/food_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FoodNotifier extends ChangeNotifier {
  FoodRepository repository;
  FoodNotifier(this.repository);

  Stream<List<DocumentSnapshot>> getFood() => repository.getFood();
}
