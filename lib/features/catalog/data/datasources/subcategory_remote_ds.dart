// lib/features/catalog/data/datasources/subcategory_remote_ds.dart
import 'package:dtoro/core/services/firestore_service.dart';
import '../models/subcategory_model.dart';

abstract class SubcategoryRemoteDataSource {
  Stream<List<SubcategoryModel>> getSubcategories(String categoryId);
}

class SubcategoryRemoteDataSourceImpl implements SubcategoryRemoteDataSource {
  final FirestoreService _firestore;
  SubcategoryRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<SubcategoryModel>> getSubcategories(String categoryId) {
    return _firestore.collectionStream<SubcategoryModel>(
      path: 'categories/$categoryId/subcategories',
      builder: (doc) =>
          SubcategoryModel.fromFirestore(categoryId, doc),
      queryBuilder: (q) => q.orderBy('priority', descending: true),
    );
  }
}
