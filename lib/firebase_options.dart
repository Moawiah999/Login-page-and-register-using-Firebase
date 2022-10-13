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
    apiKey: 'AIzaSyDxcZgyhjkSp3PfxTe7tnIqmME4mCKjaFA',
    appId: '1:388962360727:web:b3ea88274e7aab553778d2',
    messagingSenderId: '388962360727',
    projectId: 'omar-project-3c539',
    authDomain: 'omar-project-3c539.firebaseapp.com',
    storageBucket: 'omar-project-3c539.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhs0rlZ9wtqz2a6v0DsN2pB5HnPIRBU-4',
    appId: '1:388962360727:android:6cd2057a86fdafcb3778d2',
    messagingSenderId: '388962360727',
    projectId: 'omar-project-3c539',
    storageBucket: 'omar-project-3c539.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_SRF-xY1H1xX0DGtPgddaoPzHv6YOA90',
    appId: '1:388962360727:ios:09257fc671dbd06c3778d2',
    messagingSenderId: '388962360727',
    projectId: 'omar-project-3c539',
    storageBucket: 'omar-project-3c539.appspot.com',
    iosClientId: '388962360727-1k0bt4dgj6lksnl581jdf2dh06skev34.apps.googleusercontent.com',
    iosBundleId: 'com.example.tesrfier',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_SRF-xY1H1xX0DGtPgddaoPzHv6YOA90',
    appId: '1:388962360727:ios:09257fc671dbd06c3778d2',
    messagingSenderId: '388962360727',
    projectId: 'omar-project-3c539',
    storageBucket: 'omar-project-3c539.appspot.com',
    iosClientId: '388962360727-1k0bt4dgj6lksnl581jdf2dh06skev34.apps.googleusercontent.com',
    iosBundleId: 'com.example.tesrfier',
  );
}