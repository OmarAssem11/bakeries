import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource.dart';
import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:bakery/features/products/data/services/products_firebase_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductsRemoteDataSource)
class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final ProductsFirebaseService _productsFirebaseService;

  const ProductsRemoteDataSourceImpl(this._productsFirebaseService);

  @override
  Future<ProductModel> getProductDetails(String productId) async {
    try {
      return await _productsFirebaseService.getProductDetails(productId);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
