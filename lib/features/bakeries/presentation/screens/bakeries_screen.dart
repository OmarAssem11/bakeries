import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/bakeries/presentation/widgets/bakeries_list.dart';
import 'package:bakery/features/bakeries/presentation/widgets/filter_bakeries_alert.dart';
import 'package:bakery/features/bakeries/presentation/widgets/home_drawer.dart';
import 'package:bakery/features/location/presentation/cubit/location_cubit.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_bloc/flutter_bloc.dart';

class BakeriesScreen extends StatefulWidget {
  const BakeriesScreen();

  @override
  State<BakeriesScreen> createState() => _BakeriesScreenState();
}

class _BakeriesScreenState extends State<BakeriesScreen> {
  late BakeriesCubit _bakeriesCubit;
  @override
  void initState() {
    super.initState();
    _bakeriesCubit = BlocProvider.of<BakeriesCubit>(context);
    BlocProvider.of<AuthCubit>(context).isLoggedIn();
    _bakeriesCubit.getAllBakeries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).bakeries),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list_rounded),
            onPressed: () => showDialog(
              context: context,
              builder: (_) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (_) => getIt<LocationCubit>(),
                  ),
                  BlocProvider<BakeriesCubit>.value(
                    value: _bakeriesCubit,
                  ),
                ],
                child: const FilterBakeriesDialog(),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.location_on_outlined),
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.bakeriesLocations),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: BlocBuilder<BakeriesCubit, BakeriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            getBakeriesLoading: () => const LoadingIndicator(),
            getBakeriesError: () => const ErrorIndicator(),
            getBakeriesSuccess: () => BakeriesList(_bakeriesCubit.allBakeries),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
