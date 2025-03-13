import 'package:stargazer/core/services/data/models/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserRemoteDataSource {
  Future<UserModel?> getUser(String userId);
  Future<UserModel> addUser(UserModel user);
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<UserModel?> getUser(String userId) async {
    final user = await getUserFirestore(userId);
    return user;
  }

  @override
  Future<UserModel> addUser(UserModel user) async {
    await addUserFirestore(user);
    return user;
  }
}

Future<UserModel?> getUserFirestore(String userId) async {
  final userDoc = FirebaseFirestore.instance.collection('users').doc(userId);
  final docSnapshot = await userDoc.get();

  if (docSnapshot.exists) {
    return UserModel.fromJson(docSnapshot.data() as Map<String, dynamic>);
  } else {
    return null;
  }
}

Future<void> addUserFirestore(UserModel user) async {
  final userDoc = FirebaseFirestore.instance.collection('users').doc(user.id);
  await userDoc.set(user.toJson());
}
