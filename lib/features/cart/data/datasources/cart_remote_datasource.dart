// lib/features/cart/data/datasources/cart_remote_datasource.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../../core/error/exceptions.dart';
import '../models/cart_model.dart';
import '../models/cart_item_model.dart';

abstract class CartRemoteDataSource {
  Stream<CartModel?> watchCart(String userId, CartStatus status);
  Stream<List<CartItemModel>> watchCartItems(String cartId);
  Future<CartModel> createCart(String userId, String zoneId);
  Future<void> addItem(String cartId, String sellerProductId, int quantity);
  Future<void> updateItemQuantity(String cartId, String sellerProductId, int quantity);
  Future<void> removeItem(String cartId, String sellerProductId);
  Future<void> clearCart(String cartId);
  Future<void> checkoutCart(String cartId);
  Future<void> fillCartFromPreviousOrder(String userId, String zoneId, List<Map<String, dynamic>> items);
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final FirestoreService _firestoreService;
  final FirebaseFunctions _functions;

  CartRemoteDataSourceImpl(
    this._firestoreService, {
    FirebaseFunctions? functions,
  }) : _functions = functions ?? FirebaseFunctions.instance;

  String _getCartId(String userId, CartStatus status) {
    return '${userId}_${status.name}';
  }

  @override
  Stream<CartModel?> watchCart(String userId, CartStatus status) {
    try {
      final cartId = _getCartId(userId, status);
      final path = 'carts/$cartId';
      return _firestoreService.documentStream<CartModel>(
        path: path,
        builder: (doc) => CartModel.fromFirestore(doc),
      );
    } catch (e) {
      throw ServerException('Failed to watch cart: $e');
    }
  }

  @override
  Stream<List<CartItemModel>> watchCartItems(String cartId) {
    try {
      final path = 'carts/$cartId/cart_items';
      return _firestoreService.collectionStream<CartItemModel>(
        path: path,
        builder: (doc) => CartItemModel.fromFirestore(doc),
      );
    } catch (e) {
      throw ServerException('Failed to watch cart items: $e');
    }
  }

  @override
  Future<CartModel> createCart(String userId, String zoneId) async {
    try {
      final cartModel = CartModel.create(
        userId: userId,
        zoneId: zoneId,
        status: CartStatus.active,
      );

      final path = 'carts/${cartModel.id}';
      await _firestoreService.setData(
        path: path,
        data: cartModel.toDocument(),
      );

      return cartModel;
    } catch (e) {
      throw ServerException('Failed to create cart: $e');
    }
  }

  @override
  Future<void> addItem(String cartId, String sellerProductId, int quantity) async {
    try {
      await _firestoreService.runTransaction<void>((transaction) async {
        // Check if item already exists
        final itemPath = 'carts/$cartId/cart_items/$sellerProductId';
        final itemDoc = await transaction.get(
          FirebaseFirestore.instance.doc(itemPath)
        );

        if (itemDoc.exists) {
          // Update existing item quantity
          final existingItem = CartItemModel.fromFirestore(itemDoc);
          final updatedQuantity = existingItem.quantity + quantity;
          transaction.update(itemDoc.reference, {'quantity': updatedQuantity});
        } else {
          // Create new item
          final cartItem = CartItemModel.create(
            sellerProductId: sellerProductId,
            quantity: quantity,
          );
          transaction.set(itemDoc.reference, cartItem.toDocument());
        }

        // Update cart timestamp
        final cartPath = 'carts/$cartId';
        final cartRef = FirebaseFirestore.instance.doc(cartPath);
        transaction.update(cartRef, {
          'updatedAt': FieldValue.serverTimestamp(),
        });
      });
    } catch (e) {
      throw ServerException('Failed to add item to cart: $e');
    }
  }

  @override
  Future<void> updateItemQuantity(String cartId, String sellerProductId, int quantity) async {
    try {
      if (quantity <= 0) {
        await removeItem(cartId, sellerProductId);
        return;
      }

      await _firestoreService.runTransaction<void>((transaction) async {
        final itemPath = 'carts/$cartId/cart_items/$sellerProductId';
        final itemRef = FirebaseFirestore.instance.doc(itemPath);
        transaction.update(itemRef, {'quantity': quantity});

        // Update cart timestamp
        final cartPath = 'carts/$cartId';
        final cartRef = FirebaseFirestore.instance.doc(cartPath);
        transaction.update(cartRef, {
          'updatedAt': FieldValue.serverTimestamp(),
        });
      });
    } catch (e) {
      throw ServerException('Failed to update item quantity: $e');
    }
  }

  @override
  Future<void> removeItem(String cartId, String sellerProductId) async {
    try {
      await _firestoreService.runTransaction<void>((transaction) async {
        final itemPath = 'carts/$cartId/cart_items/$sellerProductId';
        final itemRef = FirebaseFirestore.instance.doc(itemPath);
        transaction.delete(itemRef);

        // Update cart timestamp
        final cartPath = 'carts/$cartId';
        final cartRef = FirebaseFirestore.instance.doc(cartPath);
        transaction.update(cartRef, {
          'updatedAt': FieldValue.serverTimestamp(),
        });
      });
    } catch (e) {
      throw ServerException('Failed to remove item from cart: $e');
    }
  }

  @override
  Future<void> clearCart(String cartId) async {
    try {
      await _firestoreService.runBatch((batch) async {
        // Get all cart items first
        final itemsPath = 'carts/$cartId/cart_items';
        final itemsSnapshot = await FirebaseFirestore.instance
            .collection(itemsPath)
            .get();

        // Delete all items
        for (final doc in itemsSnapshot.docs) {
          batch.delete(doc.reference);
        }

        // Update cart timestamp
        final cartPath = 'carts/$cartId';
        final cartRef = FirebaseFirestore.instance.doc(cartPath);
        batch.update(cartRef, {
          'updatedAt': FieldValue.serverTimestamp(),
        });
      });
    } catch (e) {
      throw ServerException('Failed to clear cart: $e');
    }
  }

  @override
  Future<void> checkoutCart(String cartId) async {
    try {
      final callable = _functions.httpsCallable('checkoutCart');
      await callable.call({
        'cartId': cartId,
      });
    } catch (e) {
      throw ServerException('Failed to checkout cart: $e');
    }
  }

  @override
  Future<void> fillCartFromPreviousOrder(
    String userId,
    String zoneId,
    List<Map<String, dynamic>> items,
  ) async {
    try {
      final callable = _functions.httpsCallable('fillCartFromPreviousOrder');
      await callable.call({
        'userId': userId,
        'zoneId': zoneId,
        'items': items,
      });
    } catch (e) {
      throw ServerException('Failed to fill cart from previous order: $e');
    }
  }
}