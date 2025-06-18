// lib/core/services/storage_service.dart
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

/// Very small façade over Cloud Storage for simple use‑cases
/// (product images, logos, etc.).
class StorageService {
  StorageService(this._storage);

  final FirebaseStorage _storage;

  /// Uploads a file and returns its public download URL.
  ///
  /// `filePath` is the destination path in the bucket
  /// (e.g. `"product_images/ribeye_12oz.jpg"`).
  Future<String> uploadFile({
    required File file,
    required String filePath,
    SettableMetadata? metadata,
  }) async {
    final ref = _storage.ref().child(filePath);
    final task = await ref.putFile(file, metadata);
    return task.ref.getDownloadURL();
  }

  /// Deletes a file, ignoring failures if it does not exist.
  Future<void> deleteFile(String filePath) async {
    try {
      await _storage.ref().child(filePath).delete();
    } on FirebaseException catch (e) {
      if (e.code != 'object-not-found') rethrow;
    }
  }

  /// Returns a reference that can be used for resumable uploads.
  Reference ref(String filePath) => _storage.ref().child(filePath);
}
