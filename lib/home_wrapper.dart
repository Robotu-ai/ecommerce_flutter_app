import 'package:flutter/material.dart';
import 'package:dtoro/features/catalog/presentation/pages/catalog_content.dart'; // Contenido catálogo (categorías, banners)
import 'package:dtoro/features/search/search_content.dart';   // Contenido búsqueda (resultados, recientes)
import 'package:dtoro/features/cart/cart_screen.dart';
import 'package:dtoro/features/orders/orders_screen.dart';
import 'package:dtoro/widgets/bottom_nav_bar.dart';
import 'package:dtoro/features/search/widgets/search_bar.dart';
import 'package:dtoro/features/search/recent_searches_screen.dart'; // Nueva pantalla de búsquedas recientes'

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int _selectedIndex = 0;
  bool _isSearching = false;
  String _searchQuery = '';

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  void _startSearch(String query) {
    setState(() {
      _searchQuery = query;
      _isSearching = true;
      _searchController.text = query;
      _searchFocusNode.requestFocus();
    });
  }

  void _cancelSearch() {
    setState(() {
      _isSearching = false;
      _searchQuery = '';
      _searchController.clear();
      _searchFocusNode.unfocus();
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _cancelSearch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> mainScreens = [
      // Aquí va el contenido normal del catálogo
      CatalogContent(),
      CartScreen(),
      OrdersScreen(),
    ];

    Widget content;
    if (_isSearching) {
      if (_searchQuery.isEmpty) {
        // Mostrar búsquedas recientes
        content = RecentSearches(
          onSearchSelected: _startSearch,
        );
      } else {
        // Mostrar resultados de búsqueda
        content = SearchContent(
          query: _searchQuery,
          onCancel: _cancelSearch,
        );
      }
    } else {
      content = mainScreens[_selectedIndex];
    }

    return Scaffold(
      appBar: AppBar(
        title: SearchBarWidget(
          controller: _searchController,
          focusNode: _searchFocusNode,
          enabled: true,
          autofocus: _isSearching,
          onChanged: (value) {
            if (value.isEmpty) {
              setState(() {
                _searchQuery = '';
              });
            } else {
              _startSearch(value);
            }
          },
          onCancel: _cancelSearch,
          onTap: () {
            setState(() {
              _isSearching = true;
            });
          },
        ),
      ),
      body: content,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}