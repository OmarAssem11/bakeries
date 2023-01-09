import 'package:bakery/features/cart/data/models/cart_order_model/cart_order_model.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';

extension CartOrderMapper on CartOrder {
  CartOrderModel get toModel => CartOrderModel(
        productId: productId,
        quantity: quantity,
      );
}
