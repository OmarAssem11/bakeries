import 'package:json_annotation/json_annotation.dart';

part 'bakery_model.g.dart';

@JsonSerializable()
class BakeryModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double rating;

  const BakeryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });

  factory BakeryModel.fromJson(Map<String, dynamic> json) =>
      _$BakeryModelFromJson(json);
}
