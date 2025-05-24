import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  final void Function(String) onSearchSelected;

  const RecentSearches({super.key, required this.onSearchSelected});

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      'Carne de res',
      'Pechuga de pollo',
      'Chorizo argentino',
      'Costilla de cerdo',
    ];

    return ListView(
      children: recentSearches
          .map((search) => ListTile(
                leading: const Icon(Icons.history),
                title: Text(search),
                onTap: () => onSearchSelected(search),
              ))
          .toList(),
    );
  }
}