// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC9G_4Y2vLnCbQTZcFksth6ZP4GA9RIuwk',
    appId: '1:484680433041:web:b090209c2473b6ee322e30',
    messagingSenderId: '484680433041',
    projectId: 'project-db-2b365',
    authDomain: 'project-db-2b365.firebaseapp.com',
    databaseURL: 'https://project-db-2b365-default-rtdb.firebaseio.com/',
    storageBucket: 'project-db-2b365.appspot.com',
    measurementId: 'G-PF84MYKE02',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEF-8uQkuKWXlUs7Okj1Jjqk_R_3feB4U',
    appId: '1:484680433041:android:86b3505ae9898b98322e30',
    messagingSenderId: '484680433041',
    projectId: 'project-db-2b365',
    databaseURL: 'https://project-db-2b365-default-rtdb.firebaseio.com/',
    storageBucket: 'project-db-2b365.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSWT-0nbiLcwOFeTNjeSPKX-_hj1wlCkc',
    appId: '1:484680433041:ios:1094ef4238df4575322e30',
    messagingSenderId: '484680433041',
    projectId: 'project-db-2b365',
    databaseURL: 'https://project-db-2b365-default-rtdb.firebaseio.com/',
    storageBucket: 'project-db-2b365.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSWT-0nbiLcwOFeTNjeSPKX-_hj1wlCkc',
    appId: '1:484680433041:ios:1094ef4238df4575322e30',
    messagingSenderId: '484680433041',
    projectId: 'project-db-2b365',
    databaseURL: 'https://project-db-2b365-default-rtdb.firebaseio.com/',
    storageBucket: 'project-db-2b365.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9G_4Y2vLnCbQTZcFksth6ZP4GA9RIuwk',
    appId: '1:484680433041:web:53ecfd73f1b445ec322e30',
    messagingSenderId: '484680433041',
    projectId: 'project-db-2b365',
    authDomain: 'project-db-2b365.firebaseapp.com',
    databaseURL: 'https://project-db-2b365-default-rtdb.firebaseio.com/',
    storageBucket: 'project-db-2b365.appspot.com',
    measurementId: 'G-YCB44TJ16E',
  );
}
