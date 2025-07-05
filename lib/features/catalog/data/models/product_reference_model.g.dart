// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_reference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BestPrice _$BestPriceFromJson(Map<String, dynamic> json) => _BestPrice(
      sellerId: json['sellerId'] as String,
      sellerName: json['sellerName'] as String,
      sellerProductId: json['sellerProductId'] as String,
      price: json['price'] as num,
      currency: json['currency'] as String,
      zoneId: json['zoneId'] as String,
    );

Map<String, dynamic> _$BestPriceToJson(_BestPrice instance) =>
    <String, dynamic>{
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'sellerProductId': instance.sellerProductId,
      'price': instance.price,
      'currency': instance.currency,
      'zoneId': instance.zoneId,
    };

_ProductReferenceModel _$ProductReferenceModelFromJson(
        Map<String, dynamic> json) =>
    _ProductReferenceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryId: json['categoryId'] as String,
      subCategoryId: json['subCategoryId'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      unitType: $enumDecode(_$UnitTypeEnumMap, json['unitType']),
      catalogState: $enumDecode(_$CatalogStateEnumMap, json['catalogState']),
      catalogPriority: json['catalogPriority'] as num,
      bestPrice: BestPrice.fromJson(json['bestPrice'] as Map<String, dynamic>),
      label: json['label'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$ProductReferenceModelToJson(
        _ProductReferenceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'unitType': _$UnitTypeEnumMap[instance.unitType]!,
      'catalogState': _$CatalogStateEnumMap[instance.catalogState]!,
      'catalogPriority': instance.catalogPriority,
      'bestPrice': instance.bestPrice.toJson(),
      'label': instance.label,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$UnitTypeEnumMap = {
  UnitType.kg: 'kg',
  UnitType.lb: 'lb',
  UnitType.piece: 'piece',
};

const _$CatalogStateEnumMap = {
  CatalogState.approved: 'approved',
  CatalogState.pending: 'pending',
};
