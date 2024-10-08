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
    apiKey: 'AIzaSyDeea_BfUEbptPZESy7TMCAbsiOzBARmKA',
    appId: '1:1088821175655:web:260119d618f77ae3a2fbc2',
    messagingSenderId: '1088821175655',
    projectId: 'chat-app-cbd8c',
    authDomain: 'chat-app-cbd8c.firebaseapp.com',
    storageBucket: 'chat-app-cbd8c.appspot.com',
    measurementId: 'G-TT86JM38NX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACxHzwcvprYnnsxDEpA69PoTxx8h206fU',
    appId: '1:1088821175655:android:3c3b1c1dfaeebfbea2fbc2',
    messagingSenderId: '1088821175655',
    projectId: 'chat-app-cbd8c',
    storageBucket: 'chat-app-cbd8c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg8OiSPNBu0CwVXSs4XpZ8oX6__BNgE7Q',
    appId: '1:1088821175655:ios:d0d53207692d3127a2fbc2',
    messagingSenderId: '1088821175655',
    projectId: 'chat-app-cbd8c',
    storageBucket: 'chat-app-cbd8c.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDg8OiSPNBu0CwVXSs4XpZ8oX6__BNgE7Q',
    appId: '1:1088821175655:ios:d0d53207692d3127a2fbc2',
    messagingSenderId: '1088821175655',
    projectId: 'chat-app-cbd8c',
    storageBucket: 'chat-app-cbd8c.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDeea_BfUEbptPZESy7TMCAbsiOzBARmKA',
    appId: '1:1088821175655:web:fc35a4d56520eed8a2fbc2',
    messagingSenderId: '1088821175655',
    projectId: 'chat-app-cbd8c',
    authDomain: 'chat-app-cbd8c.firebaseapp.com',
    storageBucket: 'chat-app-cbd8c.appspot.com',
    measurementId: 'G-J9DJ51EFRC',
  );
}
