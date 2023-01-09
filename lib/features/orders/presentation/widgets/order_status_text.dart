import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  const OrderStatusText({
    required this.status,
    required this.isInOrderDetails,
  });

  final String status;
  final bool isInOrderDetails;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    if (!isInOrderDetails) {
      textStyle = Theme.of(context).textTheme.bodyLarge;
    }
    return status == 'Pending'
        ? Text(
            'Preparing',
            style: textStyle?.copyWith(color: ColorManager.orange),
          )
        : status == 'Out for Delivery'
            ? Text(
                'On the way',
                style: textStyle?.copyWith(color: ColorManager.lightBlue),
              )
            : Text(
                'Delivered',
                style: textStyle?.copyWith(color: ColorManager.done),
              );
  }
}
