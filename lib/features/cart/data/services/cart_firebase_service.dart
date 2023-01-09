import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/cart/data/models/cart_model/cart_model.dart';
import 'package:bakery/features/cart/data/models/cart_order_model/cart_order_model.dart';
import 'package:bakery/features/cart/data/models/cart_product_model/cart_product_model.dart';
import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CartFirebaseService {
  final _cartCollection = FirebaseFirestore.instance
      .collection(FirebasePath.users)
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection(FirebasePath.cart);

  final _productsCollection =
      FirebaseFirestore.instance.collection(FirebasePath.products);

  Future<Unit> addToCart(CartOrderModel cartOrderModel) async {
    final docSnapshot =
        await _productsCollection.doc(cartOrderModel.productId).get();
    final productModel = ProductModel.fromJson(docSnapshot.data()!);
    final cartProductModel = CartProductModel(
      productModel: productModel,
      quantity: cartOrderModel.quantity,
    );
    await _cartCollection
        .doc(cartOrderModel.productId)
        .set(cartProductModel.toJson());
    return unit;
  }

  Future<CartModel> getCart() async {
    final querySnapshot = await _cartCollection.get();
    final cartProductsModels = querySnapshot.docs
        .map(
          (queryDocSnapshot) =>
              CartProductModel.fromJson(queryDocSnapshot.data()),
        )
        .toList();
    return CartModel(cartProductsModels: cartProductsModels);
  }

  Future<Unit> editCart(CartOrderModel cartOrderModel) async {
    await _cartCollection
        .doc(cartOrderModel.productId)
        .update(cartOrderModel.toJson());
    return unit;
  }

  Future<Unit> deleteFromCart(String productId) async {
    await _cartCollection.doc(productId).delete();
    return unit;
  }
}
