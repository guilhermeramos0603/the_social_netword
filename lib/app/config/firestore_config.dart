import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_social_network/app/service/db.dart';

final class FirestoreConfig extends Db {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  create(String collection, Map<String, dynamic> data, String? docId) {
    _firestore.collection(collection).doc(docId).set(data);
  }

  @override
  delele() {
    // TODO: implement delele
    throw UnimplementedError();
  }

  @override
  read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
