import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class MarkOrderAsCollectedUseCase
    implements UseCase<Unit, MarkOrderAsCollectedParams> {
  final OrdersRepository _ordersRepository;

  const MarkOrderAsCollectedUseCase(this._ordersRepository);

  @override
  Future<Either<Failure, Unit>> call(
    MarkOrderAsCollectedParams markOrderAsCollectedParams,
  ) =>
      _ordersRepository.markOrderAsCollected(
        markOrderAsCollectedParams.collectOrderData,
      );
}

class MarkOrderAsCollectedParams extends AppParams {
  final CollectOrderData collectOrderData;

  MarkOrderAsCollectedParams({required this.collectOrderData});

  @override
  List<Object?> get props => [collectOrderData];
}
