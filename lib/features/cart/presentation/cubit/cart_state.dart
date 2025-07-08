// lib/features/cart/presentation/cubit/cart_state.dart
part of 'cart_cubit.dart';

abstract class CartState {
  const CartState();
}

class CartStateInitial extends CartState {
  const CartStateInitial();
}

class CartStateLoading extends CartState {
  const CartStateLoading();
}

class CartStateLoaded extends CartState {
  final CartWithItems? cartWithItems;
  const CartStateLoaded(this.cartWithItems);
}

class CartStateError extends CartState {
  final Failure failure;
  const CartStateError(this.failure);
}

class CartStateUnauthenticated extends CartState {
  const CartStateUnauthenticated();
}