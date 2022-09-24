// class FireStoreRepository {
//   FirebaseFirestore instance;
//   FireStoreRepository(this.instance);

//   //create realtime read
//   Stream<List<DocumentSnapshot>> getCloud(String params) {
//     CollectionReference collection = instance.collection(params);
//     return collection.snapshots().map((event) => event.docs);
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class FoodRepository {
  final FirebaseFirestore instance;
  FoodRepository(this.instance);

  //create realtime read
  Stream<List<DocumentSnapshot>> getFood() {
    CollectionReference collection = instance.collection('food');
    return collection.snapshots().map((event) => event.docs);
  }
}
