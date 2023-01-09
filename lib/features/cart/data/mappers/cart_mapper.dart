import 'package:bakery/features/cart/data/mappers/cart_product_mapper.dart';
import 'package:bakery/features/cart/data/models/cart_model/cart_model.dart';
import 'package:bakery/features/cart/domain/entities/cart/cart.dart';

extension CartMapper on CartModel {
  Cart get fromModel => Cart(
        products: cartProductsModels
            .map((cartProductModel) => cartProductModel.fromModel)
            .toList(),
      );
}
