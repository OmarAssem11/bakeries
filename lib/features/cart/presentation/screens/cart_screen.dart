import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_state.dart';
import 'package:bakery/features/cart/presentation/widgets/cart_product_item.dart';
import 'package:bakery/features/cart/presentation/widgets/empty_cart.dart';
import 'package:bakery/features/cart/presentation/widgets/payment_summery.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen();

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late TextTheme _textTheme;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CartCubit>(context).getCart();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        state.mapOrNull(
          editCartError: (_) => showErrorToast(),
          deleteCartError: (_) => showErrorToast(),
        );
      },
      builder: (context, state) {
        final products = BlocProvider.of<CartCubit>(context).cartProducts;
        return state.maybeWhen(
          getCartLoading: () => Scaffold(
            appBar: AppBar(),
            body: const LoadingIndicator(),
          ),
          getCartError: () => Scaffold(
            appBar: AppBar(),
            body: const ErrorIndicator(),
          ),
          orElse: () {
            double subtotal = 0;
            products
                .map(
                  (product) => subtotal += product.price * product.quantity!,
                )
                .toList();
            return products.isEmpty
                ? const EmptyCart()
                : Scaffold(
                    appBar: AppBar(
                      title: Column(
                        children: [
                          Text(S.current.basket),
                          Text(
                            '${products.first.name} - ${products.first.bakeryAddress}',
                            style: _textTheme.bodySmall,
                          ),
                        ],
                      ),
                      centerTitle: true,
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(Insets.l),
                      child: ListView(
                        children: [
                          ListView.builder(
                            itemBuilder: (_, index) => CartProductItem(
                              product: products[index],
                              quantity: products[index].quantity!,
                            ),
                            itemCount: products.length,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                          ),
                          const SizedBox(height: Sizes.s16),
                          PaymentSummery(
                            subtotal: subtotal,
                            deliveryFee: 20,
                          ),
                          const SizedBox(height: Sizes.s24),
                          CustomElevatedButton(
                            label: S.current.checkout,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.addressLocation,
                              arguments: subtotal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}
