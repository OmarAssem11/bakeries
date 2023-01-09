import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_order.freezed.dart';

@freezed
class CartOrder with _$CartOrder {
  const factory CartOrder({
    required String productId,
    required int quantity,
  }) = _CartOrder;
}
