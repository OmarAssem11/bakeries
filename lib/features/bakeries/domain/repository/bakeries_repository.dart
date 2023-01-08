import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:dartz/dartz.dart';

abstract class BakeriesRepository {
  Future<Either<Failure, List<Bakery>>> getAllBakeries();

  Future<Either<Failure, Bakery>> getBakeryDetails(String bakeryId);
}
