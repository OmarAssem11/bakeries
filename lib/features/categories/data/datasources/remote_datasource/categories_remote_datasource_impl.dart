import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:bakery/features/categories/data/datasources/remote_datasource/categories_remote_datasource.dart';
import 'package:bakery/features/categories/data/models/category_model.dart';
import 'package:bakery/features/categories/data/services/categories_firebase_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  final CategoriesFirebaseService _categoriesFirebaseService;

  const CategoriesRemoteDataSourceImpl(this._categoriesFirebaseService);

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      return await _categoriesFirebaseService.getAllCategories();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<List<BakeryModel>> getCategoryBakeries(String categoryId) async {
    try {
      return await _categoriesFirebaseService.getCategoryBakeries(categoryId);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
