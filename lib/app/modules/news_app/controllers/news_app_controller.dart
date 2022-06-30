import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class NewsAppController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<QuerySnapshot> get documentStream =>
      firestore.collection('news').snapshots();
}
