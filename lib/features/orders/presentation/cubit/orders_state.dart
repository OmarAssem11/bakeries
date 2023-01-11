import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = OrdersInitial;

  const factory OrdersState.getOrdersLoading() = GetOrdersLoading;
  const factory OrdersState.getOrdersSuccess(
    List<Order> orders,
  ) = GetOrdersSuccess;
  const factory OrdersState.getOrdersError() = GetOrdersError;

  const factory OrdersState.getOrderDetailsLoading() = GetOrderDetailsLoading;
  const factory OrdersState.getOrderDetailsSuccess(
    Order order,
  ) = GetOrderDetailsSuccess;
  const factory OrdersState.getOrderDetailsError() = GetOrderDetailsError;

  const factory OrdersState.markOrderAsCollectedLoading() =
      MarkOrderAsCollectedLoading;
  const factory OrdersState.markOrderAsCollectedSuccess() =
      MarkOrderAsCollectedSuccess;
  const factory OrdersState.markOrderAsCollectedError() =
      MarkOrderAsCollectedError;

  const factory OrdersState.cancelOrderLoading() = CancelOrderLoading;
  const factory OrdersState.cancelOrderSuccess() = CancelOrderSuccess;
  const factory OrdersState.cancelOrderError() = CancelOrderError;
}
