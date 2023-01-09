import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/orders/domain/usecases/get_order_details_usecase.dart';
import 'package:bakery/features/orders/domain/usecases/get_orders_usecase.dart';
import 'package:bakery/features/orders/presentation/cubit/orders_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(
    this._getOrdersListUseCase,
    this._getOrderDetailsUseCase,
  ) : super(const OrdersInitial());

  final GetOrdersListUseCase _getOrdersListUseCase;
  final GetOrderDetailsUseCase _getOrderDetailsUseCase;

  Future<void> getOrders() async {
    emit(const GetOrdersListLoading());
    final result = await _getOrdersListUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetOrdersListError(),
        (orders) => GetOrdersListSuccess(orders),
      ),
    );
  }

  Future<void> getOrderDetails(String orderId) async {
    emit(const GetOrderDetailsLoading());
    final result =
        await _getOrderDetailsUseCase(GetOrderDetailsParams(orderId: orderId));
    emit(
      result.fold(
        (failure) => const GetOrderDetailsError(),
        (order) => GetOrderDetailsSuccess(order),
      ),
    );
  }
}
