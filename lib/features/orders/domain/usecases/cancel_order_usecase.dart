import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class CancelOrderUseCase implements UseCase<Unit, CancelOrderParams> {
  final OrdersRepository _ordersRepository;

  const CancelOrderUseCase(this._ordersRepository);

  @override
  Future<Either<Failure, Unit>> call(
    CancelOrderParams cancelOrderParams,
  ) =>
      _ordersRepository.cancelOrder(cancelOrderParams.orderId);
}

class CancelOrderParams extends AppParams {
  final String orderId;

  CancelOrderParams({required this.orderId});

  @override
  List<Object?> get props => [orderId];
}
