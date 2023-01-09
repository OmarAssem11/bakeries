import 'package:bakery/features/cart/data/models/cart_product_model/cart_product_model.dart';
import 'package:bakery/features/products/domain/entities/product.dart';

extension CartProductMapper on CartProductModel {
  Product get fromModel => Product(
        id: productModel.id,
        name: productModel.name,
        price: productModel.price,
        imageUrl: productModel.imageUrl,
        bakeryName: productModel.bakeryName,
        bakeryAddress: productModel.bakeryAddress,
        quantity: quantity,
      );
}
