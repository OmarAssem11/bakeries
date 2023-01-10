import 'package:bakery/core/domain/enums/order_status.dart';
import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/core/presentation/widgets/rating_widget.dart';
import 'package:bakery/di/injector.dart';
import 'package:bakery/features/cart/presentation/widgets/payment_summery.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
import 'package:bakery/features/orders/presentation/widgets/order_rating_alert.dart';
import 'package:bakery/features/orders/presentation/widgets/order_status_text.dart';
import 'package:bakery/features/orders/presentation/widgets/ordered_product_item.dart';
import 'package:bakery/generated/assets.gen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen();
  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  late final String _orderId;
  final _statusLotties = {
    OrderStatus.pending: Assets.lottie.pending,
    OrderStatus.preparing: Assets.lottie.preparing,
    OrderStatus.outForDelivery: Assets.lottie.outForDelivery,
    OrderStatus.delivered: Assets.lottie.delivered,
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _orderId = ModalRoute.of(context)!.settings.arguments! as String;
      BlocProvider.of<OrdersCubit>(context).getOrderDetails(_orderId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.orderDetails),
        centerTitle: true,
      ),
      body: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            getOrderDetailsLoading: () => const LoadingIndicator(),
            getOrderDetailsError: () => const ErrorIndicator(),
            getOrderDetailsSuccess: (order) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.l),
              child: ListView(
                children: [
                  Center(
                    child: OrderStatusText(
                      status: order.status,
                      isInOrderDetails: true,
                    ),
                  ),
                  const SizedBox(height: Sizes.s16),
                  Lottie.asset(_statusLotties[order.status]!),
                  const Divider(thickness: Sizes.s1),
                  ListView.separated(
                    itemBuilder: (_, index) => OrderedProductItem(
                      product: order.products[index],
                    ),
                    itemCount: order.products.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (_, __) => const Divider(
                      thickness: 1,
                      color: ColorManager.lightGrey,
                    ),
                  ),
                  const Divider(thickness: Sizes.s1),
                  PaymentSummery(
                    subtotal: order.subtotal,
                    deliveryFee: order.deliveryFee,
                  ),
                  const Divider(thickness: Sizes.s1),
                  if (order.status == OrderStatus.delivered)
                    Row(
                      children: [
                        Text(
                          '${S.current.orderRating}:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(width: Sizes.s8),
                        Rating(order.rating!),
                      ],
                    )
                  else
                    TextButton.icon(
                      onPressed: () => showDialog(
                        context: context,
                        builder: (_) => BlocProvider(
                          create: (_) => getIt<OrdersCubit>(),
                          child: OrderRatingDialog(
                            orderId: _orderId,
                            productId: order.products[0].id,
                          ),
                        ),
                      ).then(
                        (_) => BlocProvider.of<OrdersCubit>(context)
                            .getOrderDetails(_orderId),
                      ),
                      icon: const Icon(
                        Icons.done,
                        color: ColorManager.done,
                      ),
                      label: Text(
                        S.current.markAsCollected,
                        style: const TextStyle(color: ColorManager.done),
                      ),
                    ),
                ],
              ),
            ),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
