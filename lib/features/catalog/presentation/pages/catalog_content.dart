// lib/features/catalog/presentation/pages/catalog_content.dart
import 'package:flutter/material.dart';
import 'package:dtoro/core/di/injector.dart';
import 'package:dtoro/features/catalog/domain/entities/category.dart';
import 'package:dtoro/features/catalog/domain/entities/subcategory.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_categories.dart';
import 'package:dtoro/features/catalog/domain/usecases/get_subcategories.dart';
import 'products_grid_page.dart';

class CatalogContent extends StatelessWidget {
  const CatalogContent({super.key});

  @override
  Widget build(BuildContext context) {
    final getCategories = getIt<GetCategories>();
    final getSubcategories = getIt<GetSubcategories>();

    return StreamBuilder<List<Category>>(
      stream: getCategories(),
      builder: (ctx, catSnap) {
        if (catSnap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (catSnap.hasError) {
          return Center(child: Text('Error: ${catSnap.error}'));
        }
        final categories = catSnap.data ?? [];

        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            final cat = categories[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: StreamBuilder<List<Subcategory>>(
                stream: getSubcategories(cat.id),
                builder: (ctx2, subSnap) {
                  final subs = subSnap.data ?? [];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Título + conteo
                      Row(
                        children: [
                          Text(
                            cat.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '(${subs.length})',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 160,
                        child: subSnap.connectionState ==
                                ConnectionState.waiting
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: subs.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(width: 20),
                                itemBuilder: (ctx3, i) {
                                  final s = subs[i];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              ProductsGridPage(subcategory: s),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        // Placeholder de imagen: reemplázalo si guardas imageUrl en la subcat
                                        Container(
                                          width: 80,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .surfaceContainerHighest,
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          child: Image.network(
                                            s.imageUrl,
                                            fit: BoxFit.cover,
                                            errorBuilder: (_, __, ___) =>
                                                const Icon(Icons.broken_image,
                                                    size: 40,
                                                    color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: 80,
                                          child: Text(
                                            s.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
