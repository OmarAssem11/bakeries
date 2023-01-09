import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:bakery/features/products/presentation/widgets/quantity_price_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    required this.product,
    required this.quantity,
  });

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      padding: const EdgeInsets.only(bottom: Insets.s),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: Sizes.s8),
                QuantityPriceCounter(
                  isInCart: true,
                  initialValue: quantity,
                  price: product.price,
                  onValueChanged: (newQuantity) {
                    if (newQuantity == 0) {
                      BlocProvider.of<CartCubit>(context)
                          .deleteFromCart(product.id);
                    } else {
                      BlocProvider.of<CartCubit>(context).editCart(
                        CartOrder(
                          productId: product.id,
                          quantity: newQuantity,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(Sizes.s8)),
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
