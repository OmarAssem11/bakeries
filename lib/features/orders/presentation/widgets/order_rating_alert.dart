import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderRatingDialog extends StatefulWidget {
  const OrderRatingDialog({
    required this.orderId,
    required this.productId,
  });

  final String orderId;
  final String productId;

  @override
  State<OrderRatingDialog> createState() => _OrderRatingDialogState();
}

class _OrderRatingDialogState extends State<OrderRatingDialog> {
  double rating = 3;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: ColorManager.white,
        padding: const EdgeInsets.all(Sizes.s16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.current.rateYourOrder,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: Sizes.s16),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              allowHalfRating: true,
              itemPadding: const EdgeInsets.symmetric(horizontal: Insets.xxs),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (updatedRating) {
                rating = updatedRating;
              },
            ),
            const SizedBox(height: Sizes.s24),
            BlocConsumer<OrdersCubit, OrdersState>(
              listener: (context, state) {
                state.maybeWhen(
                  markOrderAsCollectedLoading: () => isLoading = true,
                  markOrderAsCollectedSuccess: Navigator.of(context).pop,
                  orElse: () => isLoading = false,
                );
              },
              builder: (context, state) {
                return CustomElevatedButton(
                  label: S.current.submit,
                  onPressed: () => BlocProvider.of<OrdersCubit>(context)
                      .markOrderAsCollected(
                    CollectOrderData(
                      orderId: widget.orderId,
                      orderRating: rating,
                      productId: widget.productId,
                    ),
                  ),
                  isLoading: isLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
