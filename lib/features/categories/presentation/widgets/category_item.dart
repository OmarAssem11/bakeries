import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.category);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.categoryBakeries,
        arguments: category,
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(Sizes.s20)),
              child: CachedNetworkImage(
                imageUrl: category.imageUrl,
                width: screenSize.width * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: Sizes.s12),
          Text(
            category.name,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
