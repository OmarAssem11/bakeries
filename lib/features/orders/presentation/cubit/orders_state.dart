import 'package:bakery/features/orders/domain/entities/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = OrdersInitial;

  const factory OrdersState.getOrdersListLoading() = GetOrdersListLoading;
  const factory OrdersState.getOrdersListSuccess(
    List<Order> orders,
  ) = GetOrdersListSuccess;
  const factory OrdersState.getOrdersListError() = GetOrdersListError;

  const factory OrdersState.getOrderDetailsLoading() = GetOrderDetailsLoading;
  const factory OrdersState.getOrderDetailsSuccess(
    Order order,
  ) = GetOrderDetailsSuccess;
  const factory OrdersState.getOrderDetailsError() = GetOrderDetailsError;
}
