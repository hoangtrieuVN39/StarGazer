import '../../domain/entities/user.dart';

class UserModel {
  final String id;
  final String email;
  final String? displayName;

  UserModel({required this.id, required this.email, this.displayName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      displayName: json['displayName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email, 'displayName': displayName};
  }
}
