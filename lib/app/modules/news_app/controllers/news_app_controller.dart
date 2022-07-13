import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class NewsAppController extends GetxController {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<List<DocumentSnapshot>> getNews() async {
    CollectionReference collection = instance.collection('news');
    QuerySnapshot snapshot = await collection.get();
    return snapshot.docs;
  }
}
