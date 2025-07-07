import 'package:equatable/equatable.dart';

/// Este es el único BestPrice que usará la capa de dominio
class BestPrice extends Equatable {
  final String sellerId;
  final String sellerName;
  final String sellerProductId;
  final double price;
  final String currency;
  final String zoneId;

  const BestPrice({
    required this.sellerId,
    required this.sellerName,
    required this.sellerProductId,
    required this.price,
    required this.currency,
    required this.zoneId,
  });

  @override
  List<Object?> get props => [
        sellerId,
        sellerName,
        sellerProductId,
        price,
        currency,
        zoneId,
      ];
}
