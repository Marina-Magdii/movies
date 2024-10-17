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
    apiKey: 'AIzaSyA92Ljd8sYbpqUBqPAEv8chmO89lAqfHRg',
    appId: '1:156644208871:web:5623f46af96131eccf7242',
    messagingSenderId: '156644208871',
    projectId: 'etfarrag-e26c5',
    authDomain: 'etfarrag-e26c5.firebaseapp.com',
    storageBucket: 'etfarrag-e26c5.appspot.com',
    measurementId: 'G-NL7C1SGJ59',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBM92XquU3CBMl95POGog1ChzvxBxYbZ10',
    appId: '1:156644208871:android:3e1139f0eb807d54cf7242',
    messagingSenderId: '156644208871',
    projectId: 'etfarrag-e26c5',
    storageBucket: 'etfarrag-e26c5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWEm6B68FuX8SotNW9kkFdGqb9SSwLptA',
    appId: '1:156644208871:ios:3f2159d59055aeb9cf7242',
    messagingSenderId: '156644208871',
    projectId: 'etfarrag-e26c5',
    storageBucket: 'etfarrag-e26c5.appspot.com',
    iosBundleId: 'com.example.etfarrag',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWEm6B68FuX8SotNW9kkFdGqb9SSwLptA',
    appId: '1:156644208871:ios:3f2159d59055aeb9cf7242',
    messagingSenderId: '156644208871',
    projectId: 'etfarrag-e26c5',
    storageBucket: 'etfarrag-e26c5.appspot.com',
    iosBundleId: 'com.example.etfarrag',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA92Ljd8sYbpqUBqPAEv8chmO89lAqfHRg',
    appId: '1:156644208871:web:3341ec5fc17d20a6cf7242',
    messagingSenderId: '156644208871',
    projectId: 'etfarrag-e26c5',
    authDomain: 'etfarrag-e26c5.firebaseapp.com',
    storageBucket: 'etfarrag-e26c5.appspot.com',
    measurementId: 'G-9GC8KPNXN1',
  );

}