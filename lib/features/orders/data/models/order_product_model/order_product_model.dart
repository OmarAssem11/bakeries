import 'package:json_annotation/json_annotation.dart';

part 'order_product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderProductModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;
  final String bakeryName;
  final String bakeryImageUrl;

  OrderProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.bakeryName,
    required this.bakeryImageUrl,
  });

  Map<String, dynamic> toJson() => _$OrderProductModelToJson(this);

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}
