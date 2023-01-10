import 'package:bakery/features/categories/data/models/category_model.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';

extension CategoryMapper on CategoryModel {
  Category get fromModel => Category(
        id: id,
        name: name,
        imageUrl: imageUrl,
      );
}
