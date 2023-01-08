import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/domain/repository/bakeries_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBakeriesListUseCase implements UseCase<List<Bakery>, NoParams> {
  final BakeriesRepository _bakeriesRepository;

  const GetBakeriesListUseCase(this._bakeriesRepository);

  @override
  Future<Either<Failure, List<Bakery>>> call(NoParams noParams) =>
      _bakeriesRepository.getAllBakeries();
}
