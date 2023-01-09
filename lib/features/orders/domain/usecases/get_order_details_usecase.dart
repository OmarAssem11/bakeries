import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/orders/domain/entities/order/order.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class GetOrderDetailsUseCase implements UseCase<Order, GetOrderDetailsParams> {
  final OrdersRepository _ordersRepository;

  const GetOrderDetailsUseCase(this._ordersRepository);

  @override
  Future<Either<Failure, Order>> call(
    GetOrderDetailsParams getOrderDetailsParams,
  ) =>
      _ordersRepository.getOrderDetails(getOrderDetailsParams.orderId);
}

class GetOrderDetailsParams extends AppParams {
  final String orderId;

  GetOrderDetailsParams({required this.orderId});

  @override
  List<Object?> get props => [orderId];
}
