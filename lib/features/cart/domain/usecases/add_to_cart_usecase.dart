import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:bakery/features/cart/domain/repository/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddToCartUseCase implements UseCase<Unit, AddToCartParams> {
  final CartRepository _cartRepository;

  const AddToCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, Unit>> call(AddToCartParams addToCartParams) =>
      _cartRepository.addToCart(addToCartParams.cartOrder);
}

class AddToCartParams extends AppParams {
  final CartOrder cartOrder;

  AddToCartParams(this.cartOrder);

  @override
  List<Object?> get props => [cartOrder];
}
