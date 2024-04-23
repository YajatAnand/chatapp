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
    apiKey: 'AIzaSyB3K7u6A1fABv-786Y3yMa2domIX9yYPKY',
    appId: '1:849591291842:web:ed9b5b8a5e585d6fbd505b',
    messagingSenderId: '849591291842',
    projectId: 'chatappv2-16ead',
    authDomain: 'chatappv2-16ead.firebaseapp.com',
    storageBucket: 'chatappv2-16ead.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRED_qtWZDGIvbe3G9oflXzPq0F7i1Pbw',
    appId: '1:849591291842:android:cbe53089e689ee87bd505b',
    messagingSenderId: '849591291842',
    projectId: 'chatappv2-16ead',
    storageBucket: 'chatappv2-16ead.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-aADHcYme925R4Fv2RXKVJrsXpY_wxL8',
    appId: '1:849591291842:ios:ec84c0bb4a488461bd505b',
    messagingSenderId: '849591291842',
    projectId: 'chatappv2-16ead',
    storageBucket: 'chatappv2-16ead.appspot.com',
    iosBundleId: 'com.example.chatappv2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-aADHcYme925R4Fv2RXKVJrsXpY_wxL8',
    appId: '1:849591291842:ios:ec84c0bb4a488461bd505b',
    messagingSenderId: '849591291842',
    projectId: 'chatappv2-16ead',
    storageBucket: 'chatappv2-16ead.appspot.com',
    iosBundleId: 'com.example.chatappv2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB3K7u6A1fABv-786Y3yMa2domIX9yYPKY',
    appId: '1:849591291842:web:da496a890952f616bd505b',
    messagingSenderId: '849591291842',
    projectId: 'chatappv2-16ead',
    authDomain: 'chatappv2-16ead.firebaseapp.com',
    storageBucket: 'chatappv2-16ead.appspot.com',
  );
}
