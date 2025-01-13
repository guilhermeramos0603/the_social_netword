abstract class Auth {
  final String? userId;

  Auth({required this.userId});

  Future<void> createUser({required Map<String, dynamic> userData});
}
