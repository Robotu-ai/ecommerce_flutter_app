// lib/features/catalog/domain/usecases/get_subcategories.dart
import '../entities/subcategory.dart';
import '../repositories/subcategory_repository.dart';

class GetSubcategories {
  final SubcategoryRepository _repo;
  GetSubcategories(this._repo);

  Stream<List<Subcategory>> call(String categoryId) {
    return _repo.watchSubcategories(categoryId);
  }
}
