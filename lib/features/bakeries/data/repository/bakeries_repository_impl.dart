import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/bakeries/data/datasources/remote_datasource/bakeries_remote_datasource.dart';
import 'package:bakery/features/bakeries/data/mappers/bakery_details_mapper.dart';
import 'package:bakery/features/bakeries/data/mappers/bakery_mapper.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/domain/repository/bakeries_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BakeriesRepository)
class BakeriesRepositoryImpl implements BakeriesRepository {
  final BakeriesRemoteDataSource _bakeriesRemoteDataSource;

  const BakeriesRepositoryImpl(this._bakeriesRemoteDataSource);

  @override
  Future<Either<Failure, List<Bakery>>> getAllBakeries() async {
    try {
      final bakeriesModels = await _bakeriesRemoteDataSource.getAllBakeries();
      final bakeries =
          bakeriesModels.map((bakeryModel) => bakeryModel.fromModel).toList();
      return right(bakeries);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, Bakery>> getBakeryDetails(String bakeryId) async {
    try {
      final bakeryDetailsModel =
          await _bakeriesRemoteDataSource.getBakeryDetails(bakeryId);
      return right(bakeryDetailsModel.fromModel);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
