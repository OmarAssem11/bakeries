import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/widgets/question_alert.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDrawerItems extends StatefulWidget {
  const HomeDrawerItems();

  @override
  State<HomeDrawerItems> createState() => _HomeDrawerItemsState();
}

class _HomeDrawerItemsState extends State<HomeDrawerItems> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthCubit>(context).isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.bakery_dining_outlined),
          title: Text(S.current.bakeries),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.cake_outlined),
          title: Text(S.current.categories),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.categories),
        ),
        ListTile(
          leading: const Icon(Icons.shopping_basket_outlined),
          title: Text(S.current.basket),
          onTap: () => Navigator.of(context)
              .pushNamed(isLoggedIn ? AppRoutes.cart : AppRoutes.login),
        ),
        ListTile(
          leading: const Icon(Icons.delivery_dining_outlined),
          title: Text(S.current.myOrders),
          onTap: () => Navigator.of(context)
              .pushNamed(isLoggedIn ? AppRoutes.orders : AppRoutes.login),
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: Text(S.current.settings),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.settings),
        ),
        BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is IsLoggedIn) isLoggedIn = true;
          },
          builder: (context, state) {
            return Visibility(
              visible: isLoggedIn,
              child: ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: Text(S.current.logout),
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => BlocProvider(
                    create: (_) => getIt<AuthCubit>(),
                    child: QuestionDialog(
                      question: S.current.areYouSureYouWantToLogout,
                      onSubmit: BlocProvider.of<AuthCubit>(context).logout,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
