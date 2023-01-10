import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/bakeries/presentation/widgets/home_drawer_header.dart';
import 'package:bakery/features/bakeries/presentation/widgets/home_drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          BlocProvider(
            create: (_) => getIt<AuthCubit>(),
            child: const HomeDrawerHeader(),
          ),
          const Expanded(child: HomeDrawerItems()),
        ],
      ),
    );
  }
}
