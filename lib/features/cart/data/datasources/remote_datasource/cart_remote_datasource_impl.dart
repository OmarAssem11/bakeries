import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/cart/data/datasources/remote_datasource/cart_remote_datasource.dart';
import 'package:bakery/features/cart/data/models/cart_model/cart_model.dart';
import 'package:bakery/features/cart/data/models/cart_order_model/cart_order_model.dart';
import 'package:bakery/features/cart/data/services/cart_firebase_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final CartFirebaseService _cartFirebaseService;

  const CartRemoteDataSourceImpl(this._cartFirebaseService);

  @override
  Future<Unit> addToCart(CartOrderModel cartOrderModel) async {
    try {
      return await _cartFirebaseService.addToCart(cartOrderModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<CartModel> getCart() async {
    try {
      return await _cartFirebaseService.getCart();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<Unit> editCart(CartOrderModel cartOrderModel) async {
    try {
      return await _cartFirebaseService.editCart(cartOrderModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<Unit> deleteFromCart(String productId) async {
    try {
      return await _cartFirebaseService.deleteFromCart(productId);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
