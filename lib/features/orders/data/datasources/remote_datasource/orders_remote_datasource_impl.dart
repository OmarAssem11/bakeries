import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/orders/data/datasources/remote_datasource/orders_remote_datasource.dart';
import 'package:bakery/features/orders/data/models/collect_order_data_model/collect_order_data_model.dart';
import 'package:bakery/features/orders/data/models/order_model/order_model.dart';
import 'package:bakery/features/orders/data/services/orders_firebase_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrdersRemoteDataSource)
class OrdersRemoteDataSourceImpl implements OrdersRemoteDataSource {
  final OrdersFirebaseService _ordersFirebaseService;

  const OrdersRemoteDataSourceImpl(this._ordersFirebaseService);

  @override
  Future<List<OrderModel>> getOrders() async {
    try {
      return await _ordersFirebaseService.getOrders();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<OrderModel> getOrderDetails(String orderId) async {
    try {
      return await _ordersFirebaseService.getOrderDetails(orderId);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<Unit> markOrderAsCollected(
    CollectOrderDataModel collectOrderDataModel,
  ) async {
    try {
      return await _ordersFirebaseService
          .markOrderAsCollected(collectOrderDataModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
