import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseReference {
  final FirebaseDatabase databaseReference =
      FirebaseDatabase.instanceFor(app: Firebase.app());

  DatabaseReference get users => databaseReference.ref('users');
}
