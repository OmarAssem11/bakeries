import 'package:bakery/features/cart/data/models/cart_product_model/cart_product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel {
  final List<CartProductModel> cartProductsModels;

  const CartModel({
    required this.cartProductsModels,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
