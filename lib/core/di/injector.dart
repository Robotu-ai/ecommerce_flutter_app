import 'package:dtoro/features/catalog/data/datasources/category_remote_ds.dart';
import 'package:dtoro/features/catalog/data/datasources/subcategory_remote_ds.dart';
import 'package:dtoro/features/catalog/data/repositories/category_repository_impl.dart';
import 'package:dtoro/features/catalog/data/repositories/subcategory_repository_impl.dart';
import 'package:dtoro/features/catalog/domain/repositories/category_repository.dart';
import 'package:dtoro/features/catalog/domain/repositories/subcategory_repository.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_categories.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_products_by_subcategory.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_subcategories.dart';
import 'package:get_it/get_it.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/core/services/firestore_service.dart';
import 'package:dtoro/features/catalog/data/datasources/catalog_remote_ds.dart';
import 'package:dtoro/features/catalog/data/repositories/catalog_repository_impl.dart';
import 'package:dtoro/features/catalog/domain/repositories/catalog_repository.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_products_by_category.dart';

final getIt = GetIt.instance;

void initDependencies() {
  // --- servicios core ---
  getIt.registerLazySingleton<FirestoreService>(
    () => FirestoreService(FirebaseFirestore.instance),
  );

  // --- catalog ---
  getIt.registerLazySingleton<CatalogRemoteDataSource>(
    () => CatalogRemoteDataSourceImpl(getIt<FirestoreService>()),
  );
  getIt.registerLazySingleton<CatalogRepository>(
    () => CatalogRepositoryImpl(getIt<CatalogRemoteDataSource>()),
  );
  getIt.registerFactory(
    () => GetProductsByCategory(getIt<CatalogRepository>()),
  );
  // Categorías
  getIt.registerLazySingleton<CategoryRemoteDataSource>(
    () => CategoryRemoteDataSourceImpl(getIt<FirestoreService>()),
  );
  getIt.registerLazySingleton<CategoryRepository>(
    () => CategoryRepositoryImpl(getIt<CategoryRemoteDataSource>()),
  );
  getIt.registerFactory(() => GetCategories(getIt<CategoryRepository>()));

    // Subcategorías
  getIt.registerLazySingleton<SubcategoryRemoteDataSource>(
    () => SubcategoryRemoteDataSourceImpl(getIt<FirestoreService>()),
  );
  getIt.registerLazySingleton<SubcategoryRepository>(
    () => SubcategoryRepositoryImpl(getIt<SubcategoryRemoteDataSource>()),
  );
  getIt.registerFactory(() => GetSubcategories(getIt<SubcategoryRepository>()));

  // Productos por sub‑categoría
  getIt.registerFactory(
      () => GetProductsBySubcategory(getIt<CatalogRepository>()));

  // ... otros binds ...
}
