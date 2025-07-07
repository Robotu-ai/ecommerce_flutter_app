// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcategoryModel _$SubcategoryModelFromJson(Map<String, dynamic> json) =>
    _SubcategoryModel(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      priority: json['priority'] as num,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$SubcategoryModelToJson(_SubcategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'priority': instance.priority,
      'imageUrl': instance.imageUrl,
    };
