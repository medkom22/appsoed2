import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreRepository {
  FirebaseFirestore instance;
  FireStoreRepository(this.instance);

  //create realtime read
  Stream<List<DocumentSnapshot>> getCloud(String params) {
    CollectionReference collection = instance.collection(params);
    return collection.snapshots().map((event) => event.docs);
  }
}
