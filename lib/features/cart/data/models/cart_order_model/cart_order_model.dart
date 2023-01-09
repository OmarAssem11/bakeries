import 'package:json_annotation/json_annotation.dart';

part 'cart_order_model.g.dart';

@JsonSerializable()
class CartOrderModel {
  final String productId;
  final int quantity;

  const CartOrderModel({
    required this.productId,
    required this.quantity,
  });

  Map<String, dynamic> toJson() => _$CartOrderModelToJson(this);
}
