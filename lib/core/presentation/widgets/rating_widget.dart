import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating(this.rating);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toStringAsFixed(1),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: Sizes.s4),
        const Icon(
          Icons.star,
          color: ColorManager.orange,
        ),
      ],
    );
  }
}
