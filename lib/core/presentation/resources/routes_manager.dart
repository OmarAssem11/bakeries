import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:bakery/features/auth/presentation/screens/login_screen.dart';
import 'package:bakery/features/auth/presentation/screens/register_screen.dart';
import 'package:bakery/features/auth/presentation/screens/starter_screen.dart';
import 'package:bakery/features/settings/presentation/screens/settings_screen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String starter = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot_password';
  static const String home = '/home';
  static const String addPost = '/add_post';
  static const String settings = '/settings';
}

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.starter:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const StarterScreen(),
        ),
      );
    case AppRoutes.login:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const LoginScreen(),
        ),
      );
    case AppRoutes.register:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const RegisterScreen(),
        ),
      );
    case AppRoutes.forgotPassword:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const ForgotPasswordScreen(),
        ),
      );
    case AppRoutes.settings:
      return MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
      );
    default:
      return undefinedRoute();
  }
}

Route<dynamic> undefinedRoute() => MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(S.current.noPageFound),
        ),
      ),
    );
