import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/cart/domain/entities/cart/cart.dart';
import 'package:bakery/features/cart/domain/repository/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCartUseCase implements UseCase<Cart, NoParams> {
  final CartRepository _cartRepository;

  const GetCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, Cart>> call(NoParams noParams) =>
      _cartRepository.getCart();
}
