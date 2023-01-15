import 'package:bakery/core/data/json_converters/date_time_converter.dart';
import 'package:bakery/core/domain/enums/order_status.dart';
import 'package:bakery/features/orders/data/models/order_product_model/order_product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderModel {
  final String id;
  final OrderStatus status;
  @DateTimeConverter()
  final DateTime dateTime;
  final double deliveryFee;
  final double subTotal;
  final double totalPrice;
  final List<OrderProductModel> orderProductsModels;
  final String address;
  final String phone;
  final double? rating;

  const OrderModel({
    required this.id,
    required this.status,
    required this.dateTime,
    required this.deliveryFee,
    required this.subTotal,
    required this.totalPrice,
    required this.orderProductsModels,
    required this.address,
    required this.phone,
    this.rating,
  });

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
