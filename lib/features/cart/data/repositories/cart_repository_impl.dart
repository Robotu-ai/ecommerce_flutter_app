// lib/features/cart/data/repositories/cart_repository_impl.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../../catalog/domain/entities/product_reference.dart';
import '../../domain/entities/cart.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/cart_with_items.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/cart_remote_datasource.dart';
import '../models/cart_model.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CartRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
Stream<Either<Failure, CartWithItems?>> watchActiveCart(String userId) {
  // Stream de CartModel
  return remoteDataSource.watchCart(userId, CartStatus.active).asyncExpand((cartModel) {
    if (cartModel == null) {
      // Si no hay carrito, emitimos Right(null)
      return Stream.value(const Right(null));
    }

    final cart = cartModel.toEntity();

    // Stream de items del carrito
    return remoteDataSource.watchCartItems(cart.id).map((itemModels) {
      final items = itemModels.map((model) => model.toEntity()).toList();
      return Right<Failure, CartWithItems>(CartWithItems(cart: cart, items: items));
    }).handleError((e) {
      if (e is ServerException) {
        return Left(ServerFailure(e.message));
      }
      return Left(ServerFailure('Failed to watch cart: $e'));
    });
  });
}

  @override
  Future<Either<Failure, Cart>> createCart(String userId, String zoneId) async {
    if (await networkInfo.isConnected) {
      try {
        final cartModel = await remoteDataSource.createCart(userId, zoneId);
        return Right(cartModel.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(String cartId, ProductReference product, int quantity) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.addItem(cartId, product.bestPrice!.sellerProductId, quantity);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> updateQuantity(String cartId, String sellerProductId, int quantity) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.updateItemQuantity(cartId, sellerProductId, quantity);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromCart(String cartId, String sellerProductId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.removeItem(cartId, sellerProductId);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCart(String cartId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.clearCart(cartId);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> checkoutCart(String cartId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.checkoutCart(cartId);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> fillFromPreviousOrder(String userId, String zoneId, List<Map<String, dynamic>> items) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.fillCartFromPreviousOrder(userId, zoneId, items);
        return const Right(null);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  double calculateTotal(List<CartItem> items, List<ProductReference> products) {
    double total = 0.0;
    
    for (final item in items) {
      final product = products.firstWhere(
        (p) => p.bestPrice!.sellerProductId == item.sellerProductId,
        orElse: () => throw Exception('Product not found for cart item'),
      );
      total += item.quantity * product.bestPrice!.price;
    }
    
    return double.parse(total.toStringAsFixed(2));
  }

  @override
  Map<String, List<CartItem>> groupItemsBySeller(List<CartItem> items, List<ProductReference> products) {
    final Map<String, List<CartItem>> groupedItems = {};
    
    for (final item in items) {
      final product = products.firstWhere(
        (p) => p.bestPrice!.sellerProductId == item.sellerProductId,
        orElse: () => throw Exception('Product not found for cart item'),
      );
      
      final sellerId = product.bestPrice!.sellerId;
      if (!groupedItems.containsKey(sellerId)) {
        groupedItems[sellerId] = [];
      }
      groupedItems[sellerId]!.add(item);
    }
    
    return groupedItems;
  }

  @override
  String formatPrice(double price, String unitType) {
    final formattedPrice = '\$${price.toStringAsFixed(2)}';
    switch (unitType.toLowerCase()) {
      case 'kg':
        return '$formattedPrice / kg';
      case 'lb':
        return '$formattedPrice / lb';
      case 'piece':
        return '$formattedPrice / each';
      default:
        return formattedPrice;
    }
  }
}