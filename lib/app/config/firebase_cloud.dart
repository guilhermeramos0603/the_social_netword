import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:the_social_network/app/service/auth.dart';
import 'package:the_social_network/app/service/cloud.dart';

class FirebaseCloud implements Cloud {
  final FirebaseStorage storage;
  final Auth auth;

  FirebaseCloud({required this.storage, required this.auth});

  @override
  Future<String> uploadImageToCloud(
      {required String childPath, required Uint8List file}) async {
    final ref = storage.ref().child(childPath).child(auth.userId!);

    final uploadTask = ref.putData(file);

    final snap = await uploadTask;

    return snap.ref.getDownloadURL();
  }
}
