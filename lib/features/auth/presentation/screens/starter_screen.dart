import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/util/toast.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarterScreen extends StatefulWidget {
  const StarterScreen();

  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthCubit>(context).isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) => state.mapOrNull(
        loggedIn: (_) =>
            Navigator.of(context).pushReplacementNamed(AppRoutes.home),
        notLoggedIn: (_) =>
            Navigator.of(context).pushReplacementNamed(AppRoutes.login),
        error: (_) => showToast(),
      ),
      child: const Scaffold(
        body: LoadingIndicator(),
      ),
    );
  }
}
