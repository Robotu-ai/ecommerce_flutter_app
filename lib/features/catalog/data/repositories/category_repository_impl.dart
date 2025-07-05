import 'package:dtoro/features/catalog/data/datasources/category_remote_ds.dart';
import 'package:dtoro/features/catalog/data/models/category_model.dart';
import 'package:dtoro/features/catalog/domain/entities/category.dart';
import 'package:dtoro/features/catalog/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource _remote;

  CategoryRepositoryImpl(this._remote);

  @override
  Stream<List<Category>> watchCategories() {
    return _remote.getCategories().map((List<CategoryModel> models) {
      return models
          .map((CategoryModel m) => Category(
                id: m.id,
                name: m.name,
                priority: m.priority.toInt(),
              ))
          .toList();
    });
  }
}
