import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:the_social_network/app/util/media_picker.dart';
import 'package:the_social_network/domain/usecases/create_user_usecase.dart';

class SignupController {
  final CreateUserUsecase createUserUsecase;

  SignupController({required this.createUserUsecase});

  Uint8List? image;

  void createUser({
    required String username,
    required String bio,
    required String email,
    required String password,
  }) {
    createUserUsecase.call(email, password, username, bio, image);
  }

  Future<void> selectImage() async {
    image = await pickImage(ImageSource.gallery);
    return;
  }
}
