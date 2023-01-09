import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OrdersFirebaseService {
  final _ordersCollection = FirebaseFirestore.instance
      .collection(FirebasePath.users)
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection(FirebasePath.orders);

  Future<List<OrderModel>> getOrders() async {
    final querySnapshot = await _ordersCollection.get();
    final ordersModels = querySnapshot.docs
        .map((queryDocSnapshot) => OrderModel.fromJson(queryDocSnapshot.data()))
        .toList();
    return ordersModels;
  }

  Future<OrderModel> getOrderDetails(String orderId) async {
    final docSnapshot = await _ordersCollection.doc(orderId).get();
    return OrderModel.fromJson(docSnapshot.data()!);
  }
}
