import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/cart/data/models/cart_product_model/cart_product_model.dart';
import 'package:bakery/features/checkout/data/models/checkout_data_model.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:bakery/features/orders/data/models/order_product_model/order_product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CheckoutFirebaseService {
  final _ordersCollection = FirebaseFirestore.instance
      .collection(FirebasePath.users)
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection(FirebasePath.orders);
  final _cartCollection = FirebaseFirestore.instance
      .collection(FirebasePath.users)
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection(FirebasePath.cart);

  Future<String> checkout(CheckoutDataModel checkoutModel) async {
    final doc = _ordersCollection.doc();
    final cartQuerySnapshot = await _cartCollection.get();
    final cartProductsModels = cartQuerySnapshot.docs
        .map(
          (queryDocSnapshot) =>
              CartProductModel.fromJson(queryDocSnapshot.data()),
        )
        .toList();
    final orderProductsModels = cartProductsModels.map((cartProductModel) {
      final productModel = cartProductModel.productModel;
      return OrderProductModel(
        name: productModel.name,
        imageUrl: productModel.imageUrl,
        price: productModel.price,
        quantity: cartProductModel.quantity,
        bakeryName: productModel.bakeryName!,
        bakeryImageUrl: productModel.bakeryImageUrl!,
      );
    }).toList();
    const deliveryFee = 20.0;
    double subtotal = 0.0;
    for (final orderProductModel in orderProductsModels) {
      subtotal += orderProductModel.price * orderProductModel.quantity;
    }
    final orderModel = OrderModel(
      id: doc.id,
      status: 'Pending',
      dateTime: DateTime.now(),
      deliveryFee: deliveryFee,
      subTotal: subtotal,
      totalPrice: subtotal + deliveryFee,
      orderProductsModels: orderProductsModels,
    );
    await doc.set(orderModel.toJson());
    for (final queryDocSnapshot in cartQuerySnapshot.docs) {
      queryDocSnapshot.reference.delete();
    }
    return doc.id;
  }
}
