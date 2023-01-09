import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/orders/data/models/collect_order_data_model/collect_order_data_model.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OrdersFirebaseService {
  final _ordersCollection = FirebaseFirestore.instance
      .collection(FirebasePath.users)
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection(FirebasePath.orders);

  final _bakeriesCollection =
      FirebaseFirestore.instance.collection(FirebasePath.bakeries);

  Future<List<OrderModel>> getOrders() async {
    final querySnapshot = await _ordersCollection.get();
    final ordersModels = querySnapshot.docs
        .map((queryDocSnapshot) => OrderModel.fromJson(queryDocSnapshot.data()))
        .toList();
    ordersModels.sort(
      (orderModel, nextOrderModel) =>
          orderModel.dateTime.compareTo(nextOrderModel.dateTime),
    );
    return ordersModels;
  }

  Future<OrderModel> getOrderDetails(String orderId) async {
    final docSnapshot = await _ordersCollection.doc(orderId).get();
    return OrderModel.fromJson(docSnapshot.data()!);
  }

  Future<Unit> markOrderAsCollected(
    CollectOrderDataModel collectOrderDataModel,
  ) async {
    await _ordersCollection.doc(collectOrderDataModel.orderId).update({
      FirebasePath.status: 'Delivered',
      FirebasePath.rating: collectOrderDataModel.orderRating,
    });
    final querySnapshot = await _bakeriesCollection.get();
    final queryDocSnapshot = querySnapshot.docs.firstWhere((queryDocSnapshot) {
      final productsJsonList =
          queryDocSnapshot.get(FirebasePath.products) as List<dynamic>;
      final productsModelsIds = productsJsonList.map((json) {
        json as Map<String, dynamic>;
        return json[FirebasePath.id];
      }).toList();
      final exist = productsModelsIds.contains(collectOrderDataModel.productId);
      return exist;
    });
    final bakeryRating = queryDocSnapshot.get(FirebasePath.rating) as num;
    final bakeryNumOfOrders =
        queryDocSnapshot.get(FirebasePath.numOfOrders) as int;
    final updatedBakeryRating =
        (bakeryRating * bakeryNumOfOrders + collectOrderDataModel.orderRating) /
            (bakeryNumOfOrders + 1);
    await _bakeriesCollection.doc(queryDocSnapshot.id).update({
      FirebasePath.numOfOrders: bakeryNumOfOrders + 1,
      FirebasePath.rating: updatedBakeryRating,
    });
    return unit;
  }
}
