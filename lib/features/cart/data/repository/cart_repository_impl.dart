import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/cart/data/datasources/remote_datasource/cart_remote_datasource.dart';
import 'package:bakery/features/cart/data/mappers/cart_mapper.dart';
import 'package:bakery/features/cart/data/mappers/cart_order_mapper.dart';
import 'package:bakery/features/cart/domain/entities/cart/cart.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:bakery/features/cart/domain/repository/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource _cartRemoteDataSource;

  const CartRepositoryImpl(this._cartRemoteDataSource);

  @override
  Future<Either<Failure, Unit>> addToCart(CartOrder cartOrder) async {
    try {
      await _cartRemoteDataSource.addToCart(cartOrder.toModel);
      return right(unit);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Cart>> getCart() async {
    try {
      final cartModel = await _cartRemoteDataSource.getCart();
      return right(cartModel.fromModel);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Unit>> editCart(CartOrder cartOrder) async {
    try {
      await _cartRemoteDataSource.editCart(cartOrder.toModel);
      return right(unit);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteFromCart(String productId) async {
    try {
      await _cartRemoteDataSource.deleteFromCart(productId);
      return right(unit);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
