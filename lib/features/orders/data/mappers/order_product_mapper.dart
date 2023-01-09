import 'package:bakery/features/orders/data/models/order_product_model/order_product_model.dart';
import 'package:bakery/features/products/domain/entities/product.dart';

extension OrderProductMapper on OrderProductModel {
  Product get fromModel => Product(
        id: '',
        name: name,
        price: price,
        imageUrl: imageUrl,
        quantity: quantity,
        bakeryName: bakeryName,
        bakeryImageUrl: bakeryImageUrl,
      );
}
