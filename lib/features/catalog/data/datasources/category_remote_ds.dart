import 'package:dtoro/core/services/firestore_service.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource {
  /// Stream de todos los documentos en `categories`
  Stream<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final FirestoreService _firestore;
  CategoryRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<CategoryModel>> getCategories() {
    return _firestore.collectionStream<CategoryModel>(
      path: 'categories',
      builder: (doc) => CategoryModel.fromFirestore(doc),
      queryBuilder: (q) => q.orderBy('priority', descending: true),
    );
  }
}
