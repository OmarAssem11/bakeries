import 'package:bakery/features/bakeries/data/models/bakery_details_model/bakery_details_model.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/products/data/mappers/product_mapper.dart';

extension BakeryDetailsMapper on BakeryDetailsModel {
  Bakery get fromModel {
    final productsEntities =
        products.map((productModel) => productModel.fromModel).toList();
    return Bakery(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      address: address,
      phone: phone,
      products: productsEntities,
    );
  }
}
