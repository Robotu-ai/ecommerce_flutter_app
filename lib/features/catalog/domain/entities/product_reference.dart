import 'package:equatable/equatable.dart';
import 'package:dtoro/core/enums/unit_type.dart';
import 'catalog_state.dart';
import 'best_price.dart';

class ProductReference extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final UnitType unitType;
  final int catalogPriority;
  final CatalogState catalogState;
  final BestPrice? bestPrice; // ← nullable
  final String? label;

  const ProductReference({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.unitType,
    required this.catalogPriority,
    required this.catalogState,
    this.bestPrice,
    this.label,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        imageUrl,
        unitType,
        catalogPriority,
        catalogState,
        bestPrice,
        label,
      ];
}
