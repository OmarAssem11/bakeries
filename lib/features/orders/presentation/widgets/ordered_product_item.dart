import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OrderedProductItem extends StatelessWidget {
  const OrderedProductItem({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: screenSize.height * 0.08,
          width: screenSize.width * 0.22,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(Sizes.s8)),
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: Sizes.s12),
        Text(
          '${product.quantity}  x  ${product.name}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
