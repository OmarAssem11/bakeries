import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:bakery/features/products/domain/entities/product.dart';

extension ProductMapper on ProductModel {
  Product get fromModel => Product(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        price: price,
      );
}
