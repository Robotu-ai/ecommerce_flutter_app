// lib/features/cart/presentation/pages/cart_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtoro/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:dtoro/features/cart/domain/entities/cart_item.dart';
import 'package:dtoro/features/cart/domain/entities/cart_with_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return _buildBody(state);
      },
    );
  }

  Widget _buildBody(CartState state) {
    if (state is CartStateLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is CartStateUnauthenticated) {
      return const Center(child: Text('Inicia sesión para ver tu carrito'));
    } else if (state is CartStateError) {
      return Center(child: Text('Error: ${state.failure.message}'));
    } else if (state is CartStateLoaded) {
      final cartWithItems = state.cartWithItems;
      if (cartWithItems == null || cartWithItems.items.isEmpty) {
        return const Center(child: Text('Tu carrito está vacío'));
      }
      // TODO: Calcula el subtotal real usando los precios de los productos
      final subtotal = cartWithItems.items.fold<double>(
        0,
        (sum, item) => sum + (item.quantity * 24.9), // Reemplaza 24.9 por el precio real
      );
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Text('Subtotal ', style: TextStyle(fontSize: 18)),
                Text(
                  '\$${subtotal.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: const Size.fromHeight(48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                // TODO: Acción de crear orden
              },
              child: Text(
                'Crear orden ( ${cartWithItems.items.length} productos )',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: deseleccionar todos
            },
            child: const Text('Unselect all products', style: TextStyle(color: Colors.pink)),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: cartWithItems.items.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final item = cartWithItems.items[index];
                // TODO: Obtén el producto real usando el sellerProductId
                return _CartItemTile(item: item);
              },
            ),
          ),
        ],
      );
    } else {
      // Estado inicial o desconocido
      return const SizedBox.shrink();
    }
  }
}

class _CartItemTile extends StatelessWidget {
  final CartItem item;
  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: Usa el producto real para imagen, nombre, precio, unidad, etc.
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: true, // TODO: manejar selección
          onChanged: (v) {},
          activeColor: Colors.pink,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://via.placeholder.com/64', // TODO: imagen real
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre del producto', // TODO: nombre real
                style: const TextStyle(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(Icons.arrow_drop_up, color: Colors.pink, size: 20),
                  Text(
                    '\$2,490', // TODO: precio real
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(width: 4),
                  Text('(10kg)', style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      // TODO: disminuir cantidad
                    },
                  ),
                  Text(
                    '${item.quantity}',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      // TODO: aumentar cantidad
                    },
                  ),
                  const SizedBox(width: 8),
                  DropdownButton<String>(
                    value: 'kg', // TODO: unidad real
                    items: const [
                      DropdownMenuItem(value: 'kg', child: Text('kg')),
                      DropdownMenuItem(value: 'lb', child: Text('lb')),
                      DropdownMenuItem(value: 'pz', child: Text('pz')),
                    ],
                    onChanged: (v) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}