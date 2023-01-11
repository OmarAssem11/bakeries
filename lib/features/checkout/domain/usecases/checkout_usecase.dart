import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';
import 'package:bakery/features/checkout/domain/repository/checkout_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@lazySingleton
class CheckoutUseCase implements UseCase<String, CheckoutParams> {
  final CheckoutRepository _checkoutRepository;

  const CheckoutUseCase(this._checkoutRepository);

  @override
  Future<Either<Failure, String>> call(CheckoutParams checkoutData) =>
      _checkoutRepository.checkout(checkoutData.checkoutData);
}

class CheckoutParams extends AppParams {
  final CheckoutData checkoutData;

  CheckoutParams({required this.checkoutData});

  @override
  List<Object?> get props => [checkoutData];
}
