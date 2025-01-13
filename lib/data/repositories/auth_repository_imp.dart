import 'package:the_social_network/data/datasources/auth_remote_datasource.dart';
import 'package:the_social_network/data/models/auth_model.dart';
import 'package:the_social_network/domain/repositories/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;
  AuthRepositoryImp({required this.authRemoteDatasource});
  @override
  Future<bool> createUser(AuthModel authModel) {
    return authRemoteDatasource.createUser(authMap: authModel.toMap());
  }
}
