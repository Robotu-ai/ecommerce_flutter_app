// lib/features/catalog/data/repositories/subcategory_repository_impl.dart
import 'package:dtoro/features/catalog/data/datasources/subcategory_remote_ds.dart';
import 'package:dtoro/features/catalog/data/models/subcategory_model.dart';
import 'package:dtoro/features/catalog/domain/entities/subcategory.dart';
import 'package:dtoro/features/catalog/domain/repositories/subcategory_repository.dart';

class SubcategoryRepositoryImpl implements SubcategoryRepository {
  final SubcategoryRemoteDataSource _remote;
  SubcategoryRepositoryImpl(this._remote);

  @override
  Stream<List<Subcategory>> watchSubcategories(String categoryId) {
    return _remote.getSubcategories(categoryId).map(
      (List<SubcategoryModel> models) => models
          .map(
            (m) => Subcategory(
              id: m.id,
              categoryId: m.categoryId,
              name: m.name,
              priority: m.priority.toInt(),
              imageUrl: m.imageUrl, 
            ),
          )
          .toList(),
    );
  }
}
