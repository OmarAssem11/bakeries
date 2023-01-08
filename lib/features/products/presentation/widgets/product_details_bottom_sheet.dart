import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/products/presentation/cubit/products_cubit.dart';
import 'package:bakery/features/products/presentation/cubit/products_state.dart';
import 'package:bakery/features/products/presentation/widgets/quantity_price_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsBottomSheet extends StatefulWidget {
  const ProductDetailsBottomSheet();

  @override
  State<ProductDetailsBottomSheet> createState() =>
      _ProductDetailsBottomSheetState();
}

class _ProductDetailsBottomSheetState extends State<ProductDetailsBottomSheet> {
  int quantity = 1;
  late TextTheme _textTheme;
  late Size _screenSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
    _screenSize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          getProductDetailsLoading: () => const LoadingIndicator(),
          getProductDetailsError: () => const ErrorIndicator(),
          getProductDetailsSuccess: (product) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(Sizes.s20),
                        topRight: Radius.circular(Sizes.s20),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: product.imageUrl,
                        height: _screenSize.height * .3,
                        width: _screenSize.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(Insets.s),
                      width: Sizes.s32,
                      height: Sizes.s32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: Navigator.of(context).pop,
                        icon: const Icon(
                          Icons.close,
                          color: ColorManager.black,
                          size: Sizes.s16,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.m,
                    vertical: Insets.s,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: _textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                      const SizedBox(height: Sizes.s16),
                      Text(
                        product.description!,
                        style: _textTheme.bodySmall?.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: Sizes.s12),
                      QuantityPriceCounter(
                        isInCart: false,
                        price: product.price,
                        onValueChanged: (value) =>
                            setState(() => quantity = value),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          orElse: () => const SizedBox.expand(),
        );
      },
    );
  }
}
