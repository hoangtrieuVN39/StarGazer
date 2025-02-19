import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    // Copy các giá trị từ Firebase Console
    return const FirebaseOptions(
      apiKey: 'your-api-key',
      appId: 'your-app-id',
      messagingSenderId: 'your-sender-id',
      projectId: 'your-project-id',
    );
  }
}
