// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      dateTime:
          const DateTimeConverter().fromJson(json['dateTime'] as Timestamp),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      subTotal: (json['subTotal'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      orderProductsModels: (json['orderProductsModels'] as List<dynamic>)
          .map((e) => OrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] as String,
      phone: json['phone'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'dateTime': const DateTimeConverter().toJson(instance.dateTime),
      'deliveryFee': instance.deliveryFee,
      'subTotal': instance.subTotal,
      'totalPrice': instance.totalPrice,
      'orderProductsModels':
          instance.orderProductsModels.map((e) => e.toJson()).toList(),
      'address': instance.address,
      'phone': instance.phone,
      'rating': instance.rating,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.preparing: 'preparing',
  OrderStatus.outForDelivery: 'outForDelivery',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};
