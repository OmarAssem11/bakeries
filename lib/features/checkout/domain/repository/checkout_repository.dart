import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';
import 'package:dartz/dartz.dart' hide Order;

abstract class CheckoutRepository {
  Future<Either<Failure, String>> checkout(CheckoutData checkoutData);
}
