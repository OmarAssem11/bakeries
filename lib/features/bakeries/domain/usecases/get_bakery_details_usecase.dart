import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/domain/repository/bakeries_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBakeryDetailsUseCase implements UseCase<Bakery, BakeryDetailsParams> {
  final BakeriesRepository _bakeriesRepository;

  const GetBakeryDetailsUseCase(this._bakeriesRepository);

  @override
  Future<Either<Failure, Bakery>> call(
    BakeryDetailsParams bakeryDetailsParams,
  ) =>
      _bakeriesRepository.getBakeryDetails(bakeryDetailsParams.bakeryId);
}

class BakeryDetailsParams extends AppParams {
  final String bakeryId;

  BakeryDetailsParams({required this.bakeryId});

  @override
  List<Object?> get props => [bakeryId];
}
