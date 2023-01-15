import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/core/presentation/widgets/no_results.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
import 'package:bakery/features/orders/presentation/widgets/order_item.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen();

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<OrdersCubit>(context).getOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.myOrders),
      ),
      body: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            getOrdersLoading: () => const LoadingIndicator(),
            getOrdersError: () => const ErrorIndicator(),
            getOrdersSuccess: (orders) => orders.isEmpty
                ? NoResults(S.current.youHaveNoOrdersYet)
                : ListView.separated(
                    itemBuilder: (_, index) => Padding(
                      padding: const EdgeInsets.all(Insets.xs),
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.xs),
                        child: OrderItem(
                          order: orders[index],
                          updateOrders: updateOrders,
                        ),
                      ),
                    ),
                    itemCount: orders.length,
                    separatorBuilder: (_, __) => const Divider(
                      thickness: Sizes.s1,
                      height: Sizes.s1,
                      color: ColorManager.lightGrey,
                    ),
                  ),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }

  void updateOrders() {
    BlocProvider.of<OrdersCubit>(context).getOrders();
    setState(() {});
  }
}
