import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/auth/domain/entities/register_entity.dart';
import 'package:bakery/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterUseCase implements UseCase<Unit, RegisterParams> {
  final AuthRepository _authRepository;

  const RegisterUseCase(this._authRepository);

  @override
  Future<Either<Failure, Unit>> call(RegisterParams registerParams) =>
      _authRepository.register(registerParams.registerEntity);
}

class RegisterParams extends AppParams {
  final RegisterEntity registerEntity;

  RegisterParams(this.registerEntity);

  @override
  List<Object?> get props => [registerEntity];
}
