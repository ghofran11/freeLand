// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  ///ToDo
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCC1EXTjmGYXAW8qJlFXwUDLhEabEkh3cs',
    appId: '1:569088224038:android:3bdc6e66b756e39794afe7',
    messagingSenderId: '569088224038',
    projectId: 'freeland-36920',
    storageBucket: 'freeland-36920.appspot.com',
  );

  ///ToDo:
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGoS6LSX1nYdARQTjApqkZdi_ytleK9_M',
    appId: '1:683807261155:ios:737b783c281c904918e0d6',
    messagingSenderId: '683807261155',
    projectId: 'memate-e5c9a',
    storageBucket: 'memate-e5c9a.appspot.com',
    iosClientId:
        '683807261155-kkvlmq3voc7cfjik8s53auh6olnlad0l.apps.googleusercontent.com',
    iosBundleId: 'com.example.freeland',
  );
}
