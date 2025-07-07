// lib/features/catalog/domain/entities/subcategory.dart
import 'package:equatable/equatable.dart';

class Subcategory extends Equatable {
  final String id;
  final String categoryId;
  final String name;
  final int priority;
  final String imageUrl;

  const Subcategory({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.priority,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, categoryId, name, priority];
}
