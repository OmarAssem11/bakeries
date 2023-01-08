import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:bakery/features/products/presentation/cubit/products_cubit.dart';
import 'package:bakery/features/products/presentation/widgets/product_details_bottom_sheet.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => _showProductDetailsBottomSheet(
        context: context,
        product: product,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: Sizes.s8),
                Text(
                  product.description!,
                  style: textTheme.bodySmall,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: Sizes.s8),
                Text(
                  '${S.current.egp} ${product.price}',
                  style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(width: Sizes.s16),
          Expanded(
            child: CachedNetworkImage(imageUrl: product.imageUrl),
          ),
        ],
      ),
    );
  }

  Future<void> _showProductDetailsBottomSheet({
    required BuildContext context,
    required Product product,
  }) =>
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.s20),
            topRight: Radius.circular(Sizes.s20),
          ),
        ),
        builder: (context) => BlocProvider(
          create: (context) =>
              getIt<ProductsCubit>()..getProductDetails(product.id),
          child: const FractionallySizedBox(
            heightFactor: 0.65,
            child: ProductDetailsBottomSheet(),
          ),
        ),
        isScrollControlled: true,
      );
}
