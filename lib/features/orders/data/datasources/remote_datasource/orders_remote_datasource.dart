import 'package:bakery/features/orders/data/models/order_model/order_model.dart';

abstract class OrdersRemoteDataSource {
  Future<List<OrderModel>> getOrders();

  Future<OrderModel> getOrderDetails(String orderId);
}
