import 'package:appsoed/data/repository/auth_repository.dart';
import 'package:appsoed/presentation/provider/sign_in_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      firebaseAuth: locator(),
      googleSignIn: locator(),
    ),
  );
  locator.registerLazySingleton<SignInNotifier>(
    () => SignInNotifier(
      authRepository: locator(),
    ),
  );
  locator.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  locator.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
