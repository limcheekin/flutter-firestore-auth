import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

fireStoreCommonService() async {
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'test',
    options: const FirebaseOptions(
      appId: '1:1065678221949:android:1756c86e7ac4d1a5',
      messagingSenderId: '1065678221949',
      apiKey: 'AIzaSyDcyCBNfAe7xWvfkC3dSQH1S640yfswQwg',
      projectId: 'todoapp-bce6f',
    ),
  );
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);
  return firestore;
}
