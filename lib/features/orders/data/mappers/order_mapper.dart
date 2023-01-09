import 'package:bakery/features/orders/data/mappers/order_product_mapper.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';

extension OrderMapper on OrderModel {
  Order get fromModel => Order(
        id: id,
        status: status,
        dateTime: dateTime,
        deliveryFee: deliveryFee,
        subtotal: subTotal,
        totalPrice: totalPrice,
        products: orderProductsModels
            .map((orderProductModel) => orderProductModel.fromModel)
            .toList(),
        rating: rating,
      );
}
