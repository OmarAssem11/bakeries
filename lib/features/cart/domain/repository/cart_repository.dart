import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/cart/domain/entities/cart/cart.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:dartz/dartz.dart';

abstract class CartRepository {
  Future<Either<Failure, Unit>> addToCart(CartOrder cartOrder);

  Future<Either<Failure, Cart>> getCart();

  Future<Either<Failure, Unit>> editCart(CartOrder cartOrder);

  Future<Either<Failure, Unit>> deleteFromCart(String productId);
}
