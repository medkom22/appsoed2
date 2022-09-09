import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreRepository {
  FirebaseFirestore instance;
  FireStoreRepository(this.instance);

  //create realtime read
  Stream<List<DocumentSnapshot>> getPress() {
    CollectionReference collection = instance.collection('press');
    return collection.snapshots().map((event) => event.docs);
  }
}
