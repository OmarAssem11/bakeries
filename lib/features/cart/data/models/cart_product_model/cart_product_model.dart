import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CartProductModel {
  final ProductModel productModel;
  final int quantity;

  const CartProductModel({
    required this.productModel,
    required this.quantity,
  });

  Map<String, dynamic> toJson() => _$CartProductModelToJson(this);

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
}
