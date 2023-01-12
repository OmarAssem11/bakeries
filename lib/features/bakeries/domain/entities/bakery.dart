import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'bakery.freezed.dart';

@freezed
class Bakery with _$Bakery {
  const factory Bakery({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required double rating,
    String? address,
    String? phone,
    LatLng? location,
    List<Product>? products,
  }) = _Bakery;
}
