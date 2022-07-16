import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class NewsAppController extends GetxController {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<List<DocumentSnapshot>> getPress() async {
    CollectionReference collection = instance.collection('press');
    QuerySnapshot snapshot = await collection.get();
    return snapshot.docs;
  }

  Future<List<DocumentSnapshot>> getWeekly() async {
    CollectionReference collection = instance.collection('weekly');
    QuerySnapshot snapshot = await collection.get();
    return snapshot.docs;
  }
}
