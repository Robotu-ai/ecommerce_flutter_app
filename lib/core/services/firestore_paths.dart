// lib/core/services/firestore_paths.dart
/// Static helpers that generate the canonical paths for every
/// collection, document and sub‑collection defined in the data model.
///
/// Keeps path strings in a single place to avoid typos and makes
/// IDE refactors safer.
class FirestorePaths {
  // ───────────────────────── root collections ───────────────────────────
  static const users = 'users';
  static const sellers = 'sellers';
  static const productReferences = 'product_references';
  static const carts = 'carts';
  static const orders = 'orders';

  // ────────────────────────── users ─────────────────────────────────────
  static String userDoc(String userId) => '$users/$userId';

  // ────────────────────────── sellers ───────────────────────────────────
  static String sellerDoc(String sellerId) => '$sellers/$sellerId';
  static String sellerProductsCol(String sellerId) =>
      '$sellers/$sellerId/seller_products';
  static String sellerProductDoc(String sellerId, String sellerProductId) =>
      '${sellerProductsCol(sellerId)}/$sellerProductId';
  static String stockMovementsCol(
    String sellerId,
    String sellerProductId,
  ) =>
      '${sellerProductDoc(sellerId, sellerProductId)}/stock_movements';

  // ──────────────────────── product references ─────────────────────────
  static String productReferenceDoc(String refId) =>
      '$productReferences/$refId';
  static String productPricesCol(String refId) =>
      '${productReferenceDoc(refId)}/product_prices';

  // ────────────────────────── carts ─────────────────────────────────────
  static String cartDoc(String cartId) => '$carts/$cartId';
  static String cartItemsCol(String cartId) => '${cartDoc(cartId)}/cart_items';

  // ───────────────────────── orders / suborders ─────────────────────────
  static String orderDoc(String orderId) => '$orders/$orderId';
  static String subordersCol(String orderId) => '${orderDoc(orderId)}/suborders';
  static String suborderDoc(String orderId, String sellerId) =>
      '${subordersCol(orderId)}/$sellerId';
  static String orderItemsCol(String orderId, String sellerId) =>
      '${suborderDoc(orderId, sellerId)}/order_items';
}
