import 'dart:typed_data';

import 'package:the_social_network/data/models/auth_model.dart';
import 'package:the_social_network/domain/repositories/auth_repository.dart';

class CreateUserUsecase {
  final AuthRepository authRepository;
  CreateUserUsecase({required this.authRepository});
  Future<bool> call(
    String email,
    String password,
    String username,
    String bio,
    Uint8List? file,
  ) {
    final authModel = AuthModel(
        email: email,
        password: password,
        username: username,
        bio: bio,
        file: file);
    return authRepository.createUser(authModel);
  }
}
