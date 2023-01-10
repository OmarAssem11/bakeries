import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/bakeries/presentation/widgets/bakeries_list.dart';
import 'package:bakery/features/bakeries/presentation/widgets/home_drawer.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_bloc/flutter_bloc.dart';

class BakeriesScreen extends StatefulWidget {
  const BakeriesScreen();

  @override
  State<BakeriesScreen> createState() => _BakeriesScreenState();
}

class _BakeriesScreenState extends State<BakeriesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthCubit>(context).isLoggedIn();
    BlocProvider.of<BakeriesCubit>(context).getBakeriesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.bakeries),
      ),
      drawer: const HomeDrawer(),
      body: BlocBuilder<BakeriesCubit, BakeriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            getAllBakeriesLoading: () => const LoadingIndicator(),
            getAllBakeriesError: () => const ErrorIndicator(),
            getAllBakeriesSuccess: (bakeries) => BakeriesList(bakeries),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
