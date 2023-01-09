import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/bakeries/presentation/widgets/logout_alert.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: Text(S.current.home),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: const Icon(Icons.pending_outlined),
            title: Text(S.current.myOrders),
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.orders),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(S.current.settings),
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.settings),
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: Text(S.current.logout),
            onTap: () => showDialog(
              context: context,
              builder: (_) => BlocProvider(
                create: (_) => getIt<AuthCubit>(),
                child: const LogoutAlertDialog(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
