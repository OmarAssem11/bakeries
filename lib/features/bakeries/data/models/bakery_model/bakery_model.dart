import 'package:bakery/core/data/json_converters/lat_lng_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bakery_model.g.dart';

@JsonSerializable()
class BakeryModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double rating;
  @LatLngConverter()
  final LatLng location;

  const BakeryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.location,
  });

  factory BakeryModel.fromJson(Map<String, dynamic> json) =>
      _$BakeryModelFromJson(json);
}
