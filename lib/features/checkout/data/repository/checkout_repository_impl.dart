import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/checkout/data/mappers/checkout_mapper.dart';
import 'package:bakery/features/checkout/domain/datasources/remote_datasource/checkout_remote_datasource.dart';
import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';
import 'package:bakery/features/checkout/domain/repository/checkout_repository.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

@LazySingleton(as: CheckoutRepository)
class CheckoutRepositoryImpl implements CheckoutRepository {
  final CheckoutRemoteDataSource _checkoutRemoteDataSource;

  const CheckoutRepositoryImpl(this._checkoutRemoteDataSource);

  @override
  Future<Either<Failure, String>> checkout(
    CheckoutData checkoutEntity,
  ) async {
    try {
      final orderId =
          await _checkoutRemoteDataSource.checkout(checkoutEntity.toModel);
      return right(orderId);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
