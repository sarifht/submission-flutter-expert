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
    apiKey: 'AIzaSyAu1e_saoUrYF12PRkZw0k5TZSQyJJjCys',
    appId: '1:760486513822:web:876ebe51ca7834142b7f8f',
    messagingSenderId: '760486513822',
    projectId: 'ditonton-518ca',
    authDomain: 'ditonton-518ca.firebaseapp.com',
    storageBucket: 'ditonton-518ca.appspot.com',
    measurementId: 'G-H5LDQ0RJVZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfDngypIawehB7Qt-B0yP-uBWl4hDe01U',
    appId: '1:744400014829:android:f6e0443278fa281680abe4',
    messagingSenderId: '744400014829',
    projectId: 'ditonton-sarifht',
    storageBucket: 'ditonton-sarifht.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8gMfuFn_CrPINMPlHvv-P13H_UgAli3E',
    appId: '1:744400014829:ios:86efe72e9e2fa52f80abe4',
    messagingSenderId: '744400014829',
    projectId: 'ditonton-sarifht',
    storageBucket: 'ditonton-sarifht.firebasestorage.app',
    iosBundleId: 'com.dicoding.ditonton',
  );

}