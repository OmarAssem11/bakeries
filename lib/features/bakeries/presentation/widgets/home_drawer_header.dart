import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDrawerHeader extends StatefulWidget {
  const HomeDrawerHeader();

  @override
  State<HomeDrawerHeader> createState() => _HomeDrawerHeaderState();
}

class _HomeDrawerHeaderState extends State<HomeDrawerHeader> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthCubit>(context).isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + Insets.xl,
        bottom: Insets.xl,
      ),
      child: Column(
        children: [
          Text(
            S.current.welcome,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: Sizes.s16),
          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is IsLoggedIn) {
                BlocProvider.of<AuthCubit>(context).getCurrentUser();
              }
            },
            builder: (context, state) {
              return state.maybeWhen(
                currentUser: (user) {
                  return Text(
                    user.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  );
                },
                orElse: () => TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.login),
                  child: Text(S.current.login),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
