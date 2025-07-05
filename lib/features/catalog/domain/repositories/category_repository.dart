import '../entities/category.dart';

/// Contrato de dominio para categorías
abstract class CategoryRepository {
  /// Observa la lista de categorías ordenadas por prioridad descendente
  Stream<List<Category>> watchCategories();
}

