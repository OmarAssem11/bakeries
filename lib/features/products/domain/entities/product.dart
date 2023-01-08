import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required double price,
    required String imageUrl,
    String? description,
    int? quantity,
    String? category,
    int? bakeryId,
    String? bakeryName,
  }) = _Product;
}
