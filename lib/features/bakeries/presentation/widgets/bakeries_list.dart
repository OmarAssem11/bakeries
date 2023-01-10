import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/presentation/widgets/bakery_item.dart';
import 'package:flutter/material.dart';

class BakeriesList extends StatelessWidget {
  const BakeriesList(this.bakeries);

  final List<Bakery> bakeries;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => BakeryItem(
        bakery: bakeries[index],
      ),
      itemCount: bakeries.length,
      separatorBuilder: (_, __) => const Divider(
        thickness: 1,
        color: ColorManager.lightGrey,
        indent: Sizes.s20,
        endIndent: Sizes.s20,
      ),
    );
  }
}
