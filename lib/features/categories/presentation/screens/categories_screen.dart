import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_state.dart';
import 'package:bakery/features/categories/presentation/widgets/category_item.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen();

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoriesCubit>(context).getAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.categories),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: Insets.m,
          right: Insets.l,
          left: Insets.l,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.pickYourCategory,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: Sizes.s20),
            Expanded(
              child: BlocBuilder<CategoriesCubit, CategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getAllCategoriesLoading: () => const LoadingIndicator(),
                    getAllCategoriesError: () => const ErrorIndicator(),
                    getAllCategoriesSuccess: (categories) => GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: Sizes.s20,
                        crossAxisSpacing: Sizes.s20,
                      ),
                      itemBuilder: (_, index) =>
                          CategoryItem(categories[index]),
                      itemCount: categories.length,
                    ),
                    orElse: () => const SizedBox.expand(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
