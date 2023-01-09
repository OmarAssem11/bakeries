import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class QuantityPriceCounter extends StatefulWidget {
  final double price;
  final ValueChanged<int> onValueChanged;
  final bool isInCart;
  final int? initialValue;

  const QuantityPriceCounter({
    required this.price,
    required this.onValueChanged,
    required this.isInCart,
    this.initialValue,
  });

  @override
  State<QuantityPriceCounter> createState() => _QuantityPriceCounterState();
}

class _QuantityPriceCounterState extends State<QuantityPriceCounter> {
  late int _quantity;
  late TextStyle? _bodyLarge;
  late Color _primaryColor;

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialValue ?? 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bodyLarge = Theme.of(context).textTheme.bodyLarge;
    _primaryColor = Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.s32,
      child: Row(
        children: [
          Text(
            '${S.current.egp} ${widget.price * _quantity}',
            style: _bodyLarge,
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.remove,
              size: Sizes.s24,
              color: _primaryColor,
            ),
            onPressed: () => setState(() {
              if (!widget.isInCart && _quantity > 1) {
                _quantity--;
                widget.onValueChanged(_quantity);
              } else if (widget.isInCart && _quantity >= 1) {
                _quantity--;
                widget.onValueChanged(_quantity);
              }
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.s),
            child: Text(
              '$_quantity',
              style: _bodyLarge,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              size: Sizes.s24,
              color: _primaryColor,
            ),
            onPressed: () => setState(() {
              if (_quantity < 50) {
                _quantity++;
                widget.onValueChanged(_quantity);
              }
            }),
          ),
        ],
      ),
    );
  }
}
