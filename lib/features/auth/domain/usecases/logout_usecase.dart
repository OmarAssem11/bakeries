import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutUseCase implements UseCase<Unit, NoParams> {
  final AuthRepository _authRepository;

  const LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, Unit>> call(NoParams noParams) =>
      _authRepository.logout();
}
