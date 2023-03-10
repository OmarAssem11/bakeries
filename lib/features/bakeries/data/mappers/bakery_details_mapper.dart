import 'package:bakery/features/bakeries/data/models/bakery_details_model/bakery_details_model.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/products/data/mappers/product_mapper.dart';

extension BakeryDetailsMapper on BakeryDetailsModel {
  Bakery get fromModel => Bakery(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        rating: rating,
        address: address,
        phone: phone,
        products:
            products.map((productModel) => productModel.fromModel).toList(),
      );
}
