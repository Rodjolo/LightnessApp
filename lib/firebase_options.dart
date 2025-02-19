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
    apiKey: 'AIzaSyDYWTKfHMKpvX32lBJpuDdM6vIyKUDGpQo',
    appId: '1:519573135224:web:338d3432192db5874a328d',
    messagingSenderId: '519573135224',
    projectId: 'lightness-app-3d9cc',
    authDomain: 'lightness-app-3d9cc.firebaseapp.com',
    storageBucket: 'lightness-app-3d9cc.firebasestorage.app',
    measurementId: 'G-LSP7DXDZ0K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2yB3WlC3s_OVMPaqMg7NKFHpNAJkPKyU',
    appId: '1:519573135224:android:2f72d9c611806c3a4a328d',
    messagingSenderId: '519573135224',
    projectId: 'lightness-app-3d9cc',
    storageBucket: 'lightness-app-3d9cc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUGcjn86kitdQfZ-drdx5XQ8i4Gj7Qg5A',
    appId: '1:519573135224:ios:27f0ba521e4e03eb4a328d',
    messagingSenderId: '519573135224',
    projectId: 'lightness-app-3d9cc',
    storageBucket: 'lightness-app-3d9cc.firebasestorage.app',
    iosBundleId: 'com.example.socialNetwork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUGcjn86kitdQfZ-drdx5XQ8i4Gj7Qg5A',
    appId: '1:519573135224:ios:27f0ba521e4e03eb4a328d',
    messagingSenderId: '519573135224',
    projectId: 'lightness-app-3d9cc',
    storageBucket: 'lightness-app-3d9cc.firebasestorage.app',
    iosBundleId: 'com.example.socialNetwork',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDYWTKfHMKpvX32lBJpuDdM6vIyKUDGpQo',
    appId: '1:519573135224:web:0086510bbbf3c8c04a328d',
    messagingSenderId: '519573135224',
    projectId: 'lightness-app-3d9cc',
    authDomain: 'lightness-app-3d9cc.firebaseapp.com',
    storageBucket: 'lightness-app-3d9cc.firebasestorage.app',
    measurementId: 'G-YCSZNJ1ME8',
  );
}
