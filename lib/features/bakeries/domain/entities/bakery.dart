import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bakery.freezed.dart';

@freezed
class Bakery with _$Bakery {
  const factory Bakery({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    String? address,
    String? phone,
    List<Product>? products,
  }) = _Bakery;
}
