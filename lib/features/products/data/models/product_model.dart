import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final String category;
  final String? bakeryName;
  final String? bakeryImageUrl;
  final String? bakeryAddress;

  const ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.category,
    this.bakeryName,
    this.bakeryImageUrl,
    this.bakeryAddress,
  });

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
