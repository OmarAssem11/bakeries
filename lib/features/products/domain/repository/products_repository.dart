import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepository {
  Future<Either<Failure, Product>> getProductDetails(String productId);
}
