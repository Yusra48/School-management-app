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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDSKWjGx3UDyhZpifrx1aauPA7QYWlujSM',
    appId: '1:476285124302:web:b6f156aad6a22c5ce45a9f',
    messagingSenderId: '476285124302',
    projectId: 'schoolmanagementapp-8a568',
    authDomain: 'schoolmanagementapp-8a568.firebaseapp.com',
    storageBucket: 'schoolmanagementapp-8a568.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvYeMt8rIkmhqwhAcT0Y3udTVJyBDodxY',
    appId: '1:476285124302:android:4b48b56dbc2e9fcae45a9f',
    messagingSenderId: '476285124302',
    projectId: 'schoolmanagementapp-8a568',
    storageBucket: 'schoolmanagementapp-8a568.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMFTAZWbHBLYCTT1x_ItoxoAIP6cuB5Pc',
    appId: '1:476285124302:ios:2f6ef4e714cddb41e45a9f',
    messagingSenderId: '476285124302',
    projectId: 'schoolmanagementapp-8a568',
    storageBucket: 'schoolmanagementapp-8a568.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDSKWjGx3UDyhZpifrx1aauPA7QYWlujSM',
    appId: '1:476285124302:web:4cee4a36b8c7a0c1e45a9f',
    messagingSenderId: '476285124302',
    projectId: 'schoolmanagementapp-8a568',
    authDomain: 'schoolmanagementapp-8a568.firebaseapp.com',
    storageBucket: 'schoolmanagementapp-8a568.appspot.com',
  );
}
