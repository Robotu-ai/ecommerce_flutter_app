import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final int priority;

  const Category({
    required this.id,
    required this.name,
    required this.priority,
  });

  @override
  List<Object?> get props => [id, name, priority];
}
