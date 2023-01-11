import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';
import 'package:bakery/features/orders/domain/usecases/cancel_order_usecase.dart';
import 'package:bakery/features/orders/domain/usecases/get_order_details_usecase.dart';
import 'package:bakery/features/orders/domain/usecases/get_orders_usecase.dart';
import 'package:bakery/features/orders/domain/usecases/mark_order_as_collected.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(
    this._getOrdersUseCase,
    this._getOrderDetailsUseCase,
    this._markOrderAsCollectedUseCase,
    this._cancelOrderUseCase,
  ) : super(const OrdersInitial());

  final GetOrdersUseCase _getOrdersUseCase;
  final GetOrderDetailsUseCase _getOrderDetailsUseCase;
  final MarkOrderAsCollectedUseCase _markOrderAsCollectedUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;

  Future<void> getOrders() async {
    emit(const GetOrdersLoading());
    final result = await _getOrdersUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetOrdersError(),
        (orders) => GetOrdersSuccess(orders),
      ),
    );
  }

  Future<void> getOrderDetails(String orderId) async {
    emit(const GetOrderDetailsLoading());
    final result =
        await _getOrderDetailsUseCase(OrderDetailsParams(orderId: orderId));
    emit(
      result.fold(
        (failure) => const GetOrderDetailsError(),
        (order) => GetOrderDetailsSuccess(order),
      ),
    );
  }

  Future<void> markOrderAsCollected(CollectOrderData collectOrderData) async {
    emit(const MarkOrderAsCollectedLoading());
    final result = await _markOrderAsCollectedUseCase(
      CollectOrderParams(collectOrderData: collectOrderData),
    );
    emit(
      result.fold(
        (failure) => const MarkOrderAsCollectedError(),
        (_) => const MarkOrderAsCollectedSuccess(),
      ),
    );
  }

  Future<void> cancelOrder(String orderId) async {
    emit(const CancelOrderLoading());
    final result =
        await _cancelOrderUseCase(CancelOrderParams(orderId: orderId));
    emit(
      result.fold(
        (failure) => const CancelOrderError(),
        (_) => const CancelOrderSuccess(),
      ),
    );
  }
}
