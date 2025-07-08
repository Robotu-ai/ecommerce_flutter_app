import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtoro/core/di/injector.dart';
import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dtoro/features/auth/presentation/pages/login_page.dart';
import 'package:dtoro/home_wrapper.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthStateInitial || state is AuthStateLoading) {
            return const SplashScreen();
          } else if (state is AuthStateAuthenticated) {
            return const HomeWrapper();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 80,
              color: Colors.orange,
            ),
            SizedBox(height: 24),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            SizedBox(height: 16),
            Text(
              'dToro Marketplace',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}