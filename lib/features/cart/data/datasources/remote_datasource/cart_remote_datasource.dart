import 'package:bakery/features/cart/data/models/cart_model/cart_model.dart';
import 'package:bakery/features/cart/data/models/cart_order_model/cart_order_model.dart';
import 'package:dartz/dartz.dart';

abstract class CartRemoteDataSource {
  Future<Unit> addToCart(CartOrderModel cartOrderModel);

  Future<CartModel> getCart();

  Future<Unit> editCart(CartOrderModel cartOrderModel);

  Future<Unit> deleteFromCart(String productId);
}
