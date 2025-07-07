// lib/features/catalog/data/models/subcategory_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_model.freezed.dart';
part 'subcategory_model.g.dart';

@freezed
sealed class SubcategoryModel with _$SubcategoryModel {

  const SubcategoryModel._();

  const factory SubcategoryModel({
    required String id,          // docId
    required String categoryId,  // redundante pero útil
    required String name,
    required num priority,
    required String imageUrl,
  }) = _SubcategoryModel;

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);

  factory SubcategoryModel.fromFirestore(
    String categoryId,
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      SubcategoryModel.fromJson({
        'id': doc.id,
        'categoryId': categoryId,
        ...doc.data()!,
        'imageUrl': doc.data()!['imageUrl'] ?? '',
      });

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
