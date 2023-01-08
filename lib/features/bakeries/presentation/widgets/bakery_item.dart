import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BakeryItem extends StatelessWidget {
  const BakeryItem({required this.bakery});

  final Bakery bakery;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.bakeryDetails,
        arguments: bakery.id,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.l,
          vertical: Insets.xs,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.s20),
              child: CachedNetworkImage(
                imageUrl: bakery.imageUrl,
                height: MediaQuery.of(context).size.height * .2,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: Sizes.s4),
            Text(
              bakery.name,
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: Sizes.s4),
            Text(
              bakery.description,
              style: textTheme.bodyLarge,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
