import 'package:stargazer/core/services/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String id,
    required String name,
    required String email,
    String? image,
  }) : super(
          id: id,
          name: name,
          email: email,
          image: image ?? '',
        );

  factory UserModel.fromJson(Map<Object?, Object?> json) {
    final ret = {};
    for (var key in json.keys) {
      ret[key] = json[key];
    }
    return UserModel(
      id: ret['id'] as String,
      name: ret['name'] as String,
      email: ret['email'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
