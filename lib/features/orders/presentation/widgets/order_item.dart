import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:bakery/features/orders/presentation/widgets/order_status_text.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({
    required this.order,
    required this.updateOrders,
  });

  final Order order;
  final VoidCallback updateOrders;

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  final _dateFormat = DateFormat('d MMMM yyyy  hh:mm', S.current.localeName);
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
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(
            AppRoutes.orderDetails,
            arguments: widget.order.id,
          )
          .then((_) => widget.updateOrders()),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(Insets.xxs),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.s4),
                  border: Border.all(
                    color: ColorManager.lightGrey,
                  ),
                ),
                child: CachedNetworkImage(
                  imageUrl: widget.order.products.first.bakeryImageUrl!,
                  height: _screenSize.height * 0.11,
                  width: _screenSize.width * 0.19,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: Sizes.s16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.order.products.first.bakeryName!,
                    style: _textTheme.titleLarge,
                  ),
                  const SizedBox(height: Sizes.s8),
                  OrderStatusText(
                    status: widget.order.status,
                    isInOrderDetails: false,
                  ),
                  const SizedBox(height: Sizes.s8),
                  Text(
                    _dateFormat.format(widget.order.dateTime),
                    style: _textTheme.bodySmall,
                  ),
                  const SizedBox(height: Sizes.s8),
                  Text(
                    '${S.current.orderId}: ${widget.order.id}',
                    style: _textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: ColorManager.lightGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
