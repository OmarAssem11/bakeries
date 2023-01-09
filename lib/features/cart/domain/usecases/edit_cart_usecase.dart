import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:bakery/features/cart/domain/repository/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EditCartUseCase implements UseCase<Unit, EditCartParams> {
  final CartRepository _cartRepository;

  const EditCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, Unit>> call(
    EditCartParams editCartParams,
  ) =>
      _cartRepository.editCart(editCartParams.cartOrder);
}

class EditCartParams extends AppParams {
  final CartOrder cartOrder;

  EditCartParams(this.cartOrder);

  @override
  List<Object?> get props => [cartOrder];
}
