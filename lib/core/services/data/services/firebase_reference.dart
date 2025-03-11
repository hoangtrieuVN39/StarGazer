import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stargazer/core/services/data/models/model.dart';

class FirebaseReference {
  final FirebaseDatabase databaseReference =
      FirebaseDatabase.instanceFor(app: Firebase.app());

  DatabaseReference get users => databaseReference.ref('users');

  getUserByID(String userId) => users.child(userId);

  addUser(UserModel user) {
    return users.child(user.id).set(user.toJson());
  }
}
