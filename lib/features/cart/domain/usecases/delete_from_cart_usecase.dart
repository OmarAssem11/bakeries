import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/cart/domain/repository/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteFromCartUseCase implements UseCase<Unit, DeleteFromCartParams> {
  final CartRepository _cartRepository;

  const DeleteFromCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, Unit>> call(DeleteFromCartParams deleteCartParams) =>
      _cartRepository.deleteFromCart(deleteCartParams.productId);
}

class DeleteFromCartParams extends AppParams {
  final String productId;

  DeleteFromCartParams(this.productId);

  @override
  List<Object?> get props => [productId];
}
