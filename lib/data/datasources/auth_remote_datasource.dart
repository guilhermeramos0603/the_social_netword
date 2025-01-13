import 'package:the_social_network/app/service/auth.dart';

class AuthRemoteDatasource {
  final Auth auth;

  AuthRemoteDatasource({required this.auth});

  Future<bool> createUser({
    required Map<String, dynamic> authMap,
  }) async {
    try {
      if (authMap["email"].isNotEmpty ||
          authMap["password"].isNotEmpty ||
          authMap["bio"].isNotEmpty ||
          authMap["file"] != null) {
        await auth.createUser(userData: authMap);
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
