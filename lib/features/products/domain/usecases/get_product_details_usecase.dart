import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:bakery/features/products/domain/repository/products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProductDetailsUseCase
    implements UseCase<Product, ProductDetailsParams> {
  final ProductsRepository _productsRepository;

  const GetProductDetailsUseCase(this._productsRepository);

  @override
  Future<Either<Failure, Product>> call(
    ProductDetailsParams productDetailsParams,
  ) =>
      _productsRepository.getProductDetails(productDetailsParams.productId);
}

class ProductDetailsParams extends AppParams {
  final String productId;

  ProductDetailsParams(this.productId);

  @override
  List<Object?> get props => [productId];
}
