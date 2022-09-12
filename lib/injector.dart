import 'package:appsoed/data/repository/firestore_repository.dart';
import 'package:appsoed/data/repository/jokes_repository.dart';
import 'package:appsoed/data/repository/launcher_repository.dart';
import 'package:appsoed/presentation/provider/cloud_notifier.dart';
import 'package:appsoed/presentation/provider/jokes_notifier.dart';
import 'package:appsoed/presentation/provider/launcher_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
  locator.registerLazySingleton<CloudNotifier>(
    () => CloudNotifier(
      locator(),
    ),
  );
  locator.registerLazySingleton<FireStoreRepository>(
    () => FireStoreRepository(locator()),
  );
  locator.registerLazySingleton<Client>(
    () => Client(),
  );
  locator.registerLazySingleton<LauncherRepository>(
    () => LauncherRepository(),
  );
  locator.registerLazySingleton<JokesRepository>(
    () => JokesRepository(
      locator(),
    ),
  );
  locator.registerLazySingleton<JokesNotifier>(
    () => JokesNotifier(
      locator(),
    ),
  );
  locator.registerLazySingleton<LauncherNotifier>(
    () => LauncherNotifier(
      locator(),
    ),
  );
}
