import 'dart:typed_data';

class AuthModel {
  final String email;
  final String password;
  final String username;
  final String bio;
  final Uint8List? file;

  AuthModel({
    required this.email,
    required this.password,
    required this.username,
    required this.bio,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'username': username,
      'bio': bio,
      'file': file?.toList(),
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      username: map['username'] ?? '',
      bio: map['bio'] ?? '',
      file: map['file'] != null
          ? Uint8List.fromList(List<int>.from(map['file']))
          : null,
    );
  }
}
