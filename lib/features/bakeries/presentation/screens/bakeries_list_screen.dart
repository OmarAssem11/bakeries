import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/bakeries/presentation/widgets/bakery_item.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_bloc/flutter_bloc.dart';

class BakeriesListScreen extends StatefulWidget {
  const BakeriesListScreen();

  @override
  State<BakeriesListScreen> createState() => _BakeriesListScreenState();
}

class _BakeriesListScreenState extends State<BakeriesListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BakeriesCubit>(context).getBakeriesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.bakeries),
      ),
      body: BlocBuilder<BakeriesCubit, BakeriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            getAllBakeriesLoading: () => const LoadingIndicator(),
            getAllBakeriesError: () => const ErrorIndicator(),
            getAllBakeriesSuccess: (bakeries) => ListView.separated(
              itemBuilder: (_, index) => BakeryItem(
                bakery: bakeries[index],
              ),
              itemCount: bakeries.length,
              separatorBuilder: (_, __) => const Divider(
                thickness: 1,
                color: Colors.grey,
                indent: Sizes.s20,
                endIndent: Sizes.s20,
              ),
            ),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
