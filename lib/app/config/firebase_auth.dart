import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_social_network/app/config/firestore_config.dart';
import 'package:the_social_network/app/service/auth.dart';

final class FirebaseAuthConfig implements Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreConfig _firestore = FirestoreConfig();

  @override
  Future<void> createUser({required Map<String, dynamic> userData}) async {
    final authUser = await _auth.createUserWithEmailAndPassword(
      email: userData["email"],
      password: userData["password"],
    );

    _firestore.create("users", userData, authUser.user?.uid);
  }

  @override
  String? get userId => _auth.currentUser?.uid;
}
