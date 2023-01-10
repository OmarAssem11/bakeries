import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:bakery/features/categories/data/models/category_model.dart';

abstract class CategoriesRemoteDataSource {
  Future<List<CategoryModel>> getAllCategories();
  Future<List<BakeryModel>> getCategoryBakeries(String categoryId);
}
