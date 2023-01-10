import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class GetOrderDetailsUseCase implements UseCase<Order, OrderDetailsParams> {
  final OrdersRepository _ordersRepository;

  const GetOrderDetailsUseCase(this._ordersRepository);

  @override
  Future<Either<Failure, Order>> call(
    OrderDetailsParams orderDetailsParams,
  ) =>
      _ordersRepository.getOrderDetails(orderDetailsParams.orderId);
}

class OrderDetailsParams extends AppParams {
  final String orderId;

  OrderDetailsParams({required this.orderId});

  @override
  List<Object?> get props => [orderId];
}
