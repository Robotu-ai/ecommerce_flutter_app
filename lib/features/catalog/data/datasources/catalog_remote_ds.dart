import 'package:dtoro/core/services/firestore_service.dart';
import '../models/product_reference_model.dart';

abstract class CatalogRemoteDataSource {
  /// Stream de todos los product_references para una categoría
  Stream<List<ProductReferenceModel>> getProductsByCategory(String categoryId);
  Stream<List<ProductReferenceModel>> getProductsBySubcategory(String subcatId);
}

class CatalogRemoteDataSourceImpl implements CatalogRemoteDataSource {
  final FirestoreService _firestore;

  CatalogRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<ProductReferenceModel>> getProductsByCategory(String categoryId) {
    return _firestore.collectionStream<ProductReferenceModel>(
      path: 'product_references',
      builder: (doc) => ProductReferenceModel.fromFirestore(doc),
      queryBuilder: (query) => query
          .where('categoryId', isEqualTo: categoryId)
          .where('catalogPriority', isGreaterThan: 0)
          .where('catalogState', isEqualTo: 'approved')
          .orderBy('catalogPriority', descending: true),
    );
  }

  @override
  Stream<List<ProductReferenceModel>> getProductsBySubcategory(
      String subcatId) {
    return _firestore.collectionStream<ProductReferenceModel>(
      path: 'product_references',
      builder: (doc) => ProductReferenceModel.fromFirestore(doc),
      queryBuilder: (q) => q
          .where('subCategoryId', isEqualTo: subcatId)
          .where('catalogPriority', isGreaterThan: 0)
          .where('catalogState', isEqualTo: 'approved')
          .orderBy('catalogPriority', descending: true),
    );
  }
}
