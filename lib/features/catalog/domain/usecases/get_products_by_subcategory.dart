// lib/features/catalog/domain/usecases/get_products_by_subcategory.dart
import '../entities/product_reference.dart';
import '../repositories/catalog_repository.dart';

class GetProductsBySubcategory {
  final CatalogRepository _repo;
  GetProductsBySubcategory(this._repo);

  Stream<List<ProductReference>> call(String subCategoryId) {
    // Delegamos a un método nuevo en el repositorio de productos
    return _repo.watchProductsBySubcategory(subCategoryId);
  }
}
