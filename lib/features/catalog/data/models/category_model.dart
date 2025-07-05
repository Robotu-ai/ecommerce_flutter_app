import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
sealed class CategoryModel with _$CategoryModel {

  const CategoryModel._();

  const factory CategoryModel({
    required String id,      // docId
    required String name,
    required num priority,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  factory CategoryModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      CategoryModel.fromJson({
        'id': doc.id,
        ...doc.data()!,
      });

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
