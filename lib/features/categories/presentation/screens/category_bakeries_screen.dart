import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/bakeries/presentation/widgets/bakeries_list.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryBakeriesScreen extends StatefulWidget {
  const CategoryBakeriesScreen();

  @override
  State<CategoryBakeriesScreen> createState() => _CategoryBakeriesScreenState();
}

class _CategoryBakeriesScreenState extends State<CategoryBakeriesScreen> {
  late Category _category;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _category = ModalRoute.of(context)!.settings.arguments! as Category;
    BlocProvider.of<CategoriesCubit>(context).getCategoryBakeries(_category.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_category.name)),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            getCategoryBakeriesLoading: () => const LoadingIndicator(),
            getCategoryBakeriesError: () => const ErrorIndicator(),
            getCategoryBakeriesSuccess: (bakeries) => BakeriesList(bakeries),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
