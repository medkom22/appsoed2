import 'package:appsoed/data/repository/firestore_repository.dart';
import 'package:appsoed/presentation/provider/cloud_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
  locator.registerLazySingleton<CloudNotifier>(() => CloudNotifier(locator()));
  locator.registerLazySingleton<FireStoreRepository>(
      () => FireStoreRepository(locator()));
}
