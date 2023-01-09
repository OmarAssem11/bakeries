import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bakery_details_model.g.dart';

@JsonSerializable()
class BakeryDetailsModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double rating;
  final String address;
  final String phone;
  final List<ProductModel> products;

  const BakeryDetailsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.phone,
    required this.products,
  });

  factory BakeryDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BakeryDetailsModelFromJson(json);
}
