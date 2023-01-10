import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:bakery/features/auth/presentation/screens/login_screen.dart';
import 'package:bakery/features/auth/presentation/screens/register_screen.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/screens/bakeries_screen.dart';
import 'package:bakery/features/bakeries/presentation/screens/bakery_details_screen.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:bakery/features/cart/presentation/screens/cart_screen.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:bakery/features/categories/presentation/screens/categories_screen.dart';
import 'package:bakery/features/categories/presentation/screens/category_bakeries_screen.dart';
import 'package:bakery/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:bakery/features/checkout/presentation/screens/address_location_screen.dart';
import 'package:bakery/features/checkout/presentation/screens/checkout_screen.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:bakery/features/orders/presentation/screens/order_details_screen.dart';
import 'package:bakery/features/orders/presentation/screens/orders_screen.dart';
import 'package:bakery/features/settings/presentation/screens/settings_screen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String bakeries = '/';
  static const String bakeryDetails = '/bakery-details';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String settings = '/settings';
  static const String categories = '/categories';
  static const String categoryBakeries = '/category-bakeries';
  static const String cart = '/cart';
  static const String addressLocation = '/address-location';
  static const String checkout = '/checkout';
  static const String orders = '/orders';
  static const String orderDetails = '/order-details';
}

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.bakeries:
      return MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<BakeriesCubit>()),
            BlocProvider(create: (_) => getIt<AuthCubit>()),
          ],
          child: const BakeriesScreen(),
        ),
      );
    case AppRoutes.bakeryDetails:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<BakeriesCubit>(),
          child: const BakeryDetailsScreen(),
        ),
        settings: routeSettings,
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
    case AppRoutes.categories:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<CategoriesCubit>(),
          child: const CategoriesScreen(),
        ),
      );
    case AppRoutes.categoryBakeries:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<CategoriesCubit>(),
          child: const CategoryBakeriesScreen(),
        ),
        settings: routeSettings,
      );
    case AppRoutes.cart:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<CartCubit>(),
          child: const CartScreen(),
        ),
      );
    case AppRoutes.addressLocation:
      return MaterialPageRoute(
        builder: (_) => const AddressLocationScreen(),
        settings: routeSettings,
      );
    case AppRoutes.checkout:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<CheckoutCubit>(),
          child: const CheckoutScreen(),
        ),
        settings: routeSettings,
      );
    case AppRoutes.orders:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<OrdersCubit>(),
          child: const OrdersScreen(),
        ),
      );
    case AppRoutes.orderDetails:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<OrdersCubit>(),
          child: const OrderDetailsScreen(),
        ),
        settings: routeSettings,
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
