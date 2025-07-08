import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtoro/core/di/injector.dart';
import 'package:dtoro/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dtoro/features/auth/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Esta propiedad es clave para que el Scaffold se redimensione
      // cuando el teclado virtual aparece. Por defecto es true, pero es bueno confirmarlo.
      resizeToAvoidBottomInset: true, 
      body: SafeArea(
        // Envuelve el contenido principal en un SingleChildScrollView
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Container(
                height: 120,
                margin: const EdgeInsets.only(bottom: 48),
                child: const Icon(
                  Icons.restaurant_menu,
                  size: 80,
                  color: Colors.orange,
                ),
              ),
              
              // Título
              Text(
                'dToro Marketplace',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 8),
              
              Text(
                'Inicia sesión para continuar',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 48),
              
              // Formulario de login
              const LoginForm(),

              // Añade un espacio extra al final para asegurar que el último campo
              // no quede oculto por el teclado, si es necesario.
              // Puedes ajustar este valor o eliminarlo si no es necesario.
              const SizedBox(height: 50), 
            ],
          ),
        ),
      ),
    );
  }
}