import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:dartz/dartz.dart' hide Order;

abstract class OrdersRepository {
  Future<Either<Failure, List<Order>>> getOrders();

  Future<Either<Failure, Order>> getOrderDetails(String orderId);

  Future<Either<Failure, Unit>> markOrderAsCollected(
    CollectOrderData collectOrderData,
  );

  Future<Either<Failure, Unit>> cancelOrder(String orderId);
}
