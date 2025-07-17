// lib/features/cart/domain/usecases/watch_cart_with_items.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/cart_with_items.dart';
import '../repositories/cart_repository.dart';

class WatchCartWithItems {
  final CartRepository repository;

  WatchCartWithItems(this.repository);

  Stream<Either<Failure, CartWithItems?>> call(String userId) {
    return repository.watchActiveCart(userId);
  }
}