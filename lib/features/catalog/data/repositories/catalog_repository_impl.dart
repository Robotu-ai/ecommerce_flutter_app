// lib/features/catalog/data/repositories/catalog_repository_impl.dart
import 'package:dtoro/features/catalog/data/datasources/catalog_remote_ds.dart';
import 'package:dtoro/features/catalog/data/models/product_reference_model.dart'
    as dm;
import 'package:dtoro/features/catalog/domain/entities/best_price.dart';
import 'package:dtoro/features/catalog/domain/entities/product_reference.dart';
import 'package:dtoro/features/catalog/domain/repositories/catalog_repository.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  final CatalogRemoteDataSource _remote;
  CatalogRepositoryImpl(this._remote);

  @override
  Stream<List<ProductReference>> watchProductsByCategory(
      String categoryId) {
    return _remote
        .getProductsByCategory(categoryId)
        .map((List<dm.ProductReferenceModel> dtos) {
      return dtos.map(_toEntity).toList();
    });
  }

  @override
  Stream<List<ProductReference>> watchProductsBySubcategory(
      String subcatId) {
    return _remote
        .getProductsBySubcategory(subcatId)
        .map((List<dm.ProductReferenceModel> dtos) {
      return dtos.map(_toEntity).toList();
    });
  }

  ProductReference _toEntity(dm.ProductReferenceModel m) {
    // Mapea dm.BestPrice? → domain.BestPrice?
    final dm.BestPrice? b = m.bestPrice;
    final best = b == null
        ? null
        : BestPrice(
            sellerId: b.sellerId,
            sellerName: b.sellerName,
            sellerProductId: b.sellerProductId,
            price: b.price.toDouble(),
            currency: b.currency,
            zoneId: b.zoneId,
          );

    return ProductReference(
      id: m.id,
      name: m.name,
      description: m.description,
      imageUrl: m.imageUrl,
      unitType: m.unitType,
      catalogPriority: m.catalogPriority.toInt(),
      catalogState: m.catalogState,
      bestPrice: best,
      label: m.label,
    );
  }
}
