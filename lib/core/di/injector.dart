import 'package:dtoro/core/services/auth_service.dart';
import 'package:dtoro/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:dtoro/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:dtoro/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';
import 'package:dtoro/features/auth/domain/usecases/get_auth_state_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:dtoro/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dtoro/features/catalog/data/datasources/category_remote_ds.dart';
import 'package:dtoro/features/catalog/data/datasources/subcategory_remote_ds.dart';
import 'package:dtoro/features/catalog/data/repositories/category_repository_impl.dart';
import 'package:dtoro/features/catalog/data/repositories/subcategory_repository_impl.dart';
import 'package:dtoro/features/catalog/domain/repositories/category_repository.dart';
import 'package:dtoro/features/catalog/domain/repositories/subcategory_repository.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_categories.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_products_by_subcategory.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_subcategories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/core/services/firestore_service.dart';
import 'package:dtoro/features/catalog/data/datasources/catalog_remote_ds.dart';
import 'package:dtoro/features/catalog/data/repositories/catalog_repository_impl.dart';
import 'package:dtoro/features/catalog/domain/repositories/catalog_repository.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_products_by_category.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
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

  // Authentication ...

  // External dependencies
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  // Core services
  getIt.registerLazySingleton<AuthService>(
    () => AuthService(getIt<FirebaseAuth>()),
  );

  // Data sources
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<AuthService>()),
  );
  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(getIt<SharedPreferences>()),
  );

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt<AuthRemoteDataSource>(),
      getIt<AuthLocalDataSource>(),
      getIt<FirebaseFirestore>(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<SignOutUseCase>(
    () => SignOutUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<GetAuthStateUseCase>(
    () => GetAuthStateUseCase(getIt<AuthRepository>()),
  );

  // Cubits
  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(
      getIt<GetAuthStateUseCase>(),
      getIt<SignInUseCase>(),
      getIt<SignOutUseCase>(),
    ),
  );
}
