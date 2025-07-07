import '../entities/category.dart';
import '../repositories/category_repository.dart';

/// Caso de uso para obtener la lista de categorías
class GetCategories {
  final CategoryRepository _repo;

  GetCategories(this._repo);

  /// Retorna un stream de categorías
  Stream<List<Category>> call() {
    return _repo.watchCategories();
  }
}
