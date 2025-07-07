// lib/core/services/firestore_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';

/// A thin, type‑safe wrapper over [FirebaseFirestore].
///
/// Keeps all reads/writes in one place so they can be mocked or swapped
/// in tests more easily. Use the generic helpers from your remote data
/// sources; do NOT expose Firestore objects to upper layers.
class FirestoreService {
  FirestoreService(this._db);

  final FirebaseFirestore _db;

  // ───────────────────────────── Reads ────────────────────────────────

  /// Streams a whole collection and converts each [DocumentSnapshot]
  /// using the provided [builder].
  Stream<List<T>> collectionStream<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>>) builder,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>> q)?
        queryBuilder,
    bool includeMetadataChanges = false,
  }) {
    Query<Map<String, dynamic>> query = _db.collection(path);
    if (queryBuilder != null) query = queryBuilder(query);

    return query
        .snapshots(includeMetadataChanges: includeMetadataChanges)
        .map((snapshot) => snapshot.docs.map(builder).toList());
  }

  /// Streams a single document.
  Stream<T?> documentStream<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>>) builder,
    bool includeMetadataChanges = false,
  }) =>
      _db
          .doc(path)
          .snapshots(includeMetadataChanges: includeMetadataChanges)
          .map((doc) => doc.exists ? builder(doc) : null);

  /// One‑shot read of a document, returning `null` if it does not exist.
  Future<T?> getDoc<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>>) builder,
  }) async {
    final doc = await _db.doc(path).get();
    return doc.exists ? builder(doc) : null;
  }

  // ─────────────────────────── Writes ────────────────────────────────

  /// Creates or overwrites a document.
  Future<void> setData({
    required String path,
    required Map<String, dynamic> data,
    bool merge = true,
  }) =>
      _db.doc(path).set(data, SetOptions(merge: merge));

  /// Updates a document (will fail if it does not exist).
  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
  }) =>
      _db.doc(path).update(data);

  /// Deletes a document.
  Future<void> deleteDoc({required String path}) => _db.doc(path).delete();

  /// Runs multiple writes atomically.
  Future<void> runBatch(
    void Function(WriteBatch batch) updates,
  ) async {
    final batch = _db.batch();
    updates(batch);
    await batch.commit();
  }

  /// Runs a transaction and returns a typed result.
  Future<T> runTransaction<T>(TransactionHandler<T> handler) =>
      _db.runTransaction(handler);
}
