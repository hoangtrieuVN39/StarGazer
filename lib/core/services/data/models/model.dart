import 'package:stargazer/core/services/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String id,
    required String name,
    required String email,
    required String password,
    required String image,
  }) : super(
         id: id,
         name: name,
         email: email,
         password: password,
         image: image,
       );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      image: json['image'],
    );
  }
}
