import 'package:bakery/core/domain/entities/user.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCurrentUserUseCase implements UseCase<User, NoParams> {
  final AuthRepository _authRepository;

  const GetCurrentUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, User>> call(NoParams noParams) =>
      _authRepository.getCurrentUser();
}
