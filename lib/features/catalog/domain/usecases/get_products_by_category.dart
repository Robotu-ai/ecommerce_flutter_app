import 'package:dtoro/features/catalog/domain/entities/product_reference.dart';
import 'package:dtoro/features/catalog/domain/repositories/catalog_repository.dart';

class GetProductsByCategory {
  final CatalogRepository _repo;

  GetProductsByCategory(this._repo);

  Stream<List<ProductReference>> call(String categoryId) {
    return _repo.watchProductsByCategory(categoryId);
  }
}
