import 'package:appsoed/data/repository/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class CloudNotifier extends ChangeNotifier {
  FireStoreRepository repository;
  CloudNotifier(this.repository);

  Stream<List<DocumentSnapshot>> getPress() {
    return repository.getPress();
  }
}
