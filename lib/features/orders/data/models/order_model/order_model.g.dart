// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as String,
      status: json['status'] as String,
      dateTime: const DateTimeConverter().fromJson(json['dateTime'] as int),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      subTotal: (json['subTotal'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      orderProductsModels: (json['orderProductsModels'] as List<dynamic>)
          .map((e) => OrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'dateTime': const DateTimeConverter().toJson(instance.dateTime),
      'deliveryFee': instance.deliveryFee,
      'subTotal': instance.subTotal,
      'totalPrice': instance.totalPrice,
      'orderProductsModels':
          instance.orderProductsModels.map((e) => e.toJson()).toList(),
    };
