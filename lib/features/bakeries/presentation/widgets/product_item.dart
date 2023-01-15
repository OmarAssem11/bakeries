import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_cubit.dart';
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
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(Sizes.s8)),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                height: MediaQuery.of(context).size.height * 0.13,
                fit: BoxFit.cover,
              ),
            ),
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
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) =>
                  getIt<ProductsCubit>()..getProductDetails(product.id),
            ),
            BlocProvider(
              create: (_) => getIt<CartCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<AuthCubit>(),
            ),
          ],
          child: const FractionallySizedBox(
            heightFactor: 0.68,
            child: ProductDetailsBottomSheet(),
          ),
        ),
        isScrollControlled: true,
      );
}
