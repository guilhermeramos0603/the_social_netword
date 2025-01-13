import 'package:the_social_network/data/models/auth_model.dart';

abstract class AuthRepository {
  Future<bool> createUser(AuthModel authModel);
}
