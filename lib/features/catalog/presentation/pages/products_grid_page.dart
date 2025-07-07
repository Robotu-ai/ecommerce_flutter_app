// lib/features/catalog/presentation/pages/products_grid_page.dart


import 'package:dtoro/core/enums/unit_type.dart';
import 'package:flutter/material.dart';
import 'package:dtoro/core/di/injector.dart';
import 'package:dtoro/features/catalog/domain/entities/subcategory.dart';
import 'package:dtoro/features/catalog/domain/entities/product_reference.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_products_by_subcategory.dart';

class ProductsGridPage extends StatelessWidget {
  final Subcategory subcategory;
  const ProductsGridPage({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    final getProducts = getIt<GetProductsBySubcategory>();

    return Scaffold(
      appBar: AppBar(title: Text(subcategory.name)),
      body: StreamBuilder<List<ProductReference>>(
        stream: getProducts(subcategory.id),
        builder: (ctx, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return Center(child: Text('Error: ${snap.error}'));
          }
          final products = snap.data ?? [];
          if (products.isEmpty) {
            return const Center(child: Text('No products'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .65,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: products.length,
            itemBuilder: (_, i) {
              final p = products[i];
              final best = p.bestPrice;
              if (best == null) {
                // Si no hay bestPrice, mostramos un placeholder
                return const SizedBox.shrink();
              }

              // Formatear precio
              final priceValue = best.price;
              final priceText = priceValue.toStringAsFixed(2);
              final parts = priceText.split('.');
              final dollars = parts[0];
              final cents = parts[1];
              final unitText =
                  p.unitType == UnitType.piece ? 'each' : p.unitType.name;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen + badge + botón
                  Expanded(
                    child: Stack(
                      children: [
                        // Fondo para la imagen
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Center(
                            child: Image.network(
                              p.imageUrl,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => const Icon(
                                Icons.broken_image,
                                size: 48,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        // Badge en esquina superior izq si existe label
                        if (p.label != null && p.label!.isNotEmpty)
                          Positioned(
                            top: 6,
                            left: 6,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                p.label!,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                              ),
                            ),
                          ),

                        // Botón circular "+", esquina inferior drcha
                        Positioned(
                          bottom: 6,
                          right: 6,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Nombre del producto
                  Text(
                    p.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 4),

                  // Precio formateado al estilo Amazon
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$dollars',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              '.$cents',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ' / $unitText',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 2),

                  // Nombre del seller con mejor precio
                  Text(
                    'Sold by ${best.sellerName}',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

