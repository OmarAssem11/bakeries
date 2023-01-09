import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class PaymentSummery extends StatelessWidget {
  const PaymentSummery({
    required this.subtotal,
    required this.deliveryFee,
  });

  final double subtotal;
  final double deliveryFee;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.paymentSummery,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: Sizes.s16),
        buildRow(
          context: context,
          label: S.current.subtotal,
          value: '$subtotal',
        ),
        buildRow(
          context: context,
          label: S.current.deliveryFee,
          value: '$deliveryFee',
        ),
        buildRow(
          context: context,
          label: S.current.totalAmount,
          value: '${subtotal + deliveryFee}',
        ),
      ],
    );
  }

  Padding buildRow({
    required BuildContext context,
    required String label,
    required String value,
  }) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: bodyLarge,
          ),
          Text(
            value,
            style: bodyLarge,
          ),
        ],
      ),
    );
  }
}
