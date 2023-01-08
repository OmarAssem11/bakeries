import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/products/data/datasources/remote_datasource/products_remote_datasource.dart';
import 'package:bakery/features/products/data/mappers/product_mapper.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:bakery/features/products/domain/repository/products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSource _productsRemoteDataSource;

  const ProductsRepositoryImpl(this._productsRemoteDataSource);

  @override
  Future<Either<Failure, Product>> getProductDetails(String productId) async {
    try {
      final productModel =
          await _productsRemoteDataSource.getProductDetails(productId);
      return right(productModel.fromModel);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
