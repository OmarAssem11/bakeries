import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/orders/data/datasources/remote_datasource/orders_remote_datasource.dart';
import 'package:bakery/features/orders/data/mappers/collect_order_data_model_mapper.dart';
import 'package:bakery/features/orders/data/mappers/order_mapper.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@LazySingleton(as: OrdersRepository)
class OrdersRepositoryImpl implements OrdersRepository {
  final OrdersRemoteDataSource _ordersRemoteDataSource;

  const OrdersRepositoryImpl(this._ordersRemoteDataSource);

  @override
  Future<Either<Failure, List<Order>>> getOrders() async {
    try {
      final ordersModels = await _ordersRemoteDataSource.getOrders();
      final orders =
          ordersModels.map((orderModel) => orderModel.fromModel).toList();
      return right(orders);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Order>> getOrderDetails(String orderId) async {
    try {
      final orderModel = await _ordersRemoteDataSource.getOrderDetails(orderId);
      return right(orderModel.fromModel);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Unit>> markOrderAsCollected(
    CollectOrderData collectOrderData,
  ) async {
    try {
      await _ordersRemoteDataSource
          .markOrderAsCollected(collectOrderData.toModel);
      return right(unit);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
