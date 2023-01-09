import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/orders/domain/entities/order.dart';
import 'package:bakery/features/orders/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class GetOrdersListUseCase implements UseCase<List<Order>, NoParams> {
  final OrdersRepository _ordersRepository;

  const GetOrdersListUseCase(this._ordersRepository);

  @override
  Future<Either<Failure, List<Order>>> call(NoParams noParams) =>
      _ordersRepository.getOrders();
}
