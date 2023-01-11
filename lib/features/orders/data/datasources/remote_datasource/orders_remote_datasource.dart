import 'package:bakery/features/orders/data/models/collect_order_data_model/collect_order_data_model.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRemoteDataSource {
  Future<List<OrderModel>> getOrders();

  Future<OrderModel> getOrderDetails(String orderId);

  Future<Unit> markOrderAsCollected(
    CollectOrderDataModel collectOrderDataModel,
  );

  Future<Unit> cancelOrder(String orderId);
}
