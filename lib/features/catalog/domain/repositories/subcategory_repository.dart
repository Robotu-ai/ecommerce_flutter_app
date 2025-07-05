// lib/features/catalog/domain/repositories/subcategory_repository.dart
import '../entities/subcategory.dart';

abstract class SubcategoryRepository {
  Stream<List<Subcategory>> watchSubcategories(String categoryId);
}
