import 'package:bakery/features/products/data/models/product_model.dart';

abstract class ProductsRemoteDataSource {
  Future<ProductModel> getProductDetails(String productId);
}
