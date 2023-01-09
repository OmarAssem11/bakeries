import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/orders/domain/entities/order.dart';
import 'package:dartz/dartz.dart' hide Order;

abstract class OrdersRepository {
  Future<Either<Failure, List<Order>>> getOrders();

  Future<Either<Failure, Order>> getOrderDetails(String orderId);
}
