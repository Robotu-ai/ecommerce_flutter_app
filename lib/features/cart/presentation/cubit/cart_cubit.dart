// lib/features/cart/presentation/cubit/cart_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';
import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import '../../domain/usecases/watch_cart_with_items.dart';
import '../../domain/entities/cart_with_items.dart';
import '../../../../core/error/failures.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AuthRepository authRepository;
  final WatchCartWithItems watchCartWithItems;

  CartCubit({
    required this.authRepository,
    required this.watchCartWithItems,
  }) : super(const CartStateLoading()) {
    _init();
  }

  void _init() {
    authRepository.authStateStream.listen((authState) {
      if (authState is AuthStateAuthenticated) {
        final user = authState.user;
        emit(const CartStateLoading());
        watchCartWithItems(user.id).listen((either) {
          either.fold(
            (failure) => emit(CartStateError(failure)),
            (cartWithItems) => emit(CartStateLoaded(cartWithItems)),
          );
        });
      } else if (authState is AuthStateUnauthenticated) {
        emit(const CartStateUnauthenticated());
      } else if (authState is AuthStateError) {
        emit(CartStateError(ServerFailure(authState.message)));
      } else if (authState is AuthStateLoading) {
        emit(const CartStateLoading());
      } else {
        emit(const CartStateInitial());
      }
    });
  }
}