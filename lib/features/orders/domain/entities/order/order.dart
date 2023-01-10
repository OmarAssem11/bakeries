import 'package:bakery/core/domain/enums/order_status.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required OrderStatus status,
    required DateTime dateTime,
    required double deliveryFee,
    required double subtotal,
    required double totalPrice,
    required List<Product> products,
    double? rating,
  }) = _Order;
}
