import '../entities/product_reference.dart';

abstract class CatalogRepository {
  /// Observa la lista de productos en una categoría
  Stream<List<ProductReference>> watchProductsByCategory(String categoryId);
  Stream<List<ProductReference>> watchProductsBySubcategory(String subcatId);
}
