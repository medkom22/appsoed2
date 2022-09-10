// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCVSPrLA-tHSDSByINc5j8dYwmCp1jhEz8',
    appId: '1:714247919067:web:0ca475d468b9a214ac43fe',
    messagingSenderId: '714247919067',
    projectId: 'appsoed-1b70e',
    authDomain: 'appsoed-1b70e.firebaseapp.com',
    storageBucket: 'appsoed-1b70e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDf9SvW8Es-UCeKsJGD7185bFd5a90jGxc',
    appId: '1:714247919067:android:1cd7b554e712cdf7ac43fe',
    messagingSenderId: '714247919067',
    projectId: 'appsoed-1b70e',
    storageBucket: 'appsoed-1b70e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDltbCCl8dICYo3CSxx-rgaY6lJiehr5dQ',
    appId: '1:714247919067:ios:45bb441621c5a033ac43fe',
    messagingSenderId: '714247919067',
    projectId: 'appsoed-1b70e',
    storageBucket: 'appsoed-1b70e.appspot.com',
    iosClientId:
        '714247919067-j3njh2tol872qqdc7gbbcr8mj9pvksg2.apps.googleusercontent.com',
    iosBundleId: 'com.example.appsoed',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDltbCCl8dICYo3CSxx-rgaY6lJiehr5dQ',
    appId: '1:714247919067:ios:45bb441621c5a033ac43fe',
    messagingSenderId: '714247919067',
    projectId: 'appsoed-1b70e',
    storageBucket: 'appsoed-1b70e.appspot.com',
    iosClientId:
        '714247919067-j3njh2tol872qqdc7gbbcr8mj9pvksg2.apps.googleusercontent.com',
    iosBundleId: 'com.example.appsoed',
  );
}
