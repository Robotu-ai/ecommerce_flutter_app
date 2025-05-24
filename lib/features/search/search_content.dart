import 'package:flutter/material.dart';

class SearchContent extends StatelessWidget {
  final String query;
  final VoidCallback onCancel;

  const SearchContent({
    super.key,
    required this.query,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      'Carne de res',
      'Pechuga de pollo',
      'Chorizo argentino',
      'Costilla de cerdo',
    ];

    final filteredResults = [
      'Carne de res premium',
      'Pechuga de pollo orgánica',
      'Chorizo argentino picante',
      'Costilla de cerdo BBQ',
    ].where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (query.isEmpty) ...[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Búsquedas recientes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recentSearches.length,
              itemBuilder: (context, index) {
                final item = recentSearches[index];
                return ListTile(
                  leading: const Icon(Icons.history),
                  title: Text(item),
                  onTap: () {
                    // Aquí podrías actualizar la búsqueda en HomeWrapper
                    // Por ejemplo, usando un callback o un state management
                  },
                );
              },
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Resultados para "$query"',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: onCancel,
                  child: const Text('Cancelar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredResults.isEmpty
                ? const Center(child: Text('No se encontraron resultados'))
                : ListView.builder(
                    itemCount: filteredResults.length,
                    itemBuilder: (context, index) {
                      final item = filteredResults[index];
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          // Acción al seleccionar un resultado
                        },
                      );
                    },
                  ),
          ),
        ],
      ],
    );
  }
}
