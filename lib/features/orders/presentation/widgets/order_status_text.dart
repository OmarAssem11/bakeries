import 'package:bakery/core/domain/enums/order_status.dart';
import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  const OrderStatusText({
    required this.status,
    required this.isInOrderDetails,
  });

  final OrderStatus status;
  final bool isInOrderDetails;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    if (!isInOrderDetails) {
      textStyle = Theme.of(context).textTheme.bodyLarge;
    }
    return Text(
      status.text,
      style: textStyle?.copyWith(
        color: _statusColors[status],
      ),
    );
  }
}

final _statusColors = {
  OrderStatus.pending: ColorManager.blueGray,
  OrderStatus.preparing: ColorManager.lightBlue,
  OrderStatus.outForDelivery: ColorManager.blueGray,
  OrderStatus.delivered: ColorManager.done,
  OrderStatus.cancelled: ColorManager.error,
};
