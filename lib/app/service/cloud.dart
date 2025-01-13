import 'dart:typed_data';

abstract class Cloud {
  Future<String> uploadImageToCloud(
      {required String childPath, required Uint8List file});
}
