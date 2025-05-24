import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.storefront),
          label: 'Catalog',
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_bag),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: Icon(Icons.receipt_long),
          label: 'Orders',
        ),
      ],
    );
  }
}