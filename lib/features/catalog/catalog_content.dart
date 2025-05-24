import 'package:flutter/material.dart';

class CatalogContent extends StatelessWidget {
  const CatalogContent({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data for each category, using local asset images
    final categories = [
      {
        'title': 'Red Meat',
        'types': [
          {'label': 'Beef', 'image': 'assets/images/beef.png'},
          {'label': 'Pork', 'image': 'assets/images/pork.png'},
          {'label': 'Lamb', 'image': 'assets/images/lamb.png'},
          {'label': 'Goat', 'image': 'assets/images/goat.png'},
          {'label': 'Veal', 'image': 'assets/images/veal.png'},
          {'label': 'Venison', 'image': 'assets/images/venison.png'},
          {'label': 'Bison', 'image': 'assets/images/bison.png'},
          {'label': 'Rabbit', 'image': 'assets/images/rabbit.png'},
        ],
      },
      {
        'title': 'Birds',
        'types': [
          {'label': 'Chicken', 'image': 'assets/images/chicken.png'},
          {'label': 'Turkey', 'image': 'assets/images/turkey.png'},
          {'label': 'Duck', 'image': 'assets/images/duck.png'},
          {'label': 'Quail', 'image': 'assets/images/quail.png'},
          {'label': 'Goose', 'image': 'assets/images/goose.png'},
        ],
      },
      {
        'title': 'Fish and Seafood',
        'types': [
          {'label': 'Salmon', 'image': 'assets/images/salmon.png'},
          {'label': 'Tuna', 'image': 'assets/images/tuna.png'},
          {'label': 'Shrimp', 'image': 'assets/images/shrimp.png'},
          {'label': 'Lobster', 'image': 'assets/images/lobster.png'},
          {'label': 'Crab', 'image': 'assets/images/crab.png'},
          {'label': 'Oyster', 'image': 'assets/images/oyster.png'},
          {'label': 'Clam', 'image': 'assets/images/clam.png'},
        ],
      },
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: categories.length,
      separatorBuilder: (_, __) => const SizedBox(height: 24),
      itemBuilder: (context, catIndex) {
        final category = categories[catIndex];
        final types = category['types'] as List<Map<String, String>>;
        final count = types.length;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category title with count
              Row(
                children: [
                  Text(
                    '${category['title']} ',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '($count)',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: types.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 20),
                  itemBuilder: (context, typeIndex) {
                    final type = types[typeIndex];
                    return Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            type['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => const Icon(Icons.image, size: 40, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          type['label']!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}