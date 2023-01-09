import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/features/cart/presentation/widgets/payment_summery.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
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
  late String _orderId;
  late ThemeData _theme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _orderId = ModalRoute.of(context)!.settings.arguments! as String;
      BlocProvider.of<OrdersCubit>(context).getOrderDetails(_orderId);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _theme = Theme.of(context);
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
                  Lottie.asset(
                    order.status == 'Pending'
                        ? Assets.lottie.pending
                        : order.status == 'Out for Delivery'
                            ? Assets.lottie.processing
                            : Assets.lottie.delivered,
                  ),
                  const Divider(thickness: Sizes.s1),
                  ListView.separated(
                    itemBuilder: (_, index) => OrderedProductItem(
                      product: order.products[index],
                    ),
                    itemCount: order.products.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (_, __) => Divider(
                      thickness: 1,
                      color: _theme.colorScheme.surface,
                    ),
                  ),
                  const Divider(thickness: Sizes.s1),
                  PaymentSummery(
                    subtotal: order.subtotal,
                    deliveryFee: order.deliveryFee,
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
