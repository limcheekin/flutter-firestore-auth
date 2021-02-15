import 'package:firebase_core/firebase_core.dart';

Future<FirebaseApp> initFirebaseApp() async {
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'main',
    options: const FirebaseOptions(
      appId: '1:281857908313:android:f78c76108e0c25a6435b48',
      messagingSenderId: '281857908313',
      apiKey: 'AIzaSyD7ziFJxCnCoySaxYiEaKtdthujPSRVY-g',
      projectId: 'flutter-widgets-explorer',
    ),
  );

  return app;
}
