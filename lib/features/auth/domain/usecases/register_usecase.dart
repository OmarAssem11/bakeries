import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/auth/domain/entities/register_data/register_data.dart';
import 'package:bakery/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterUseCase implements UseCase<Unit, RegisterParams> {
  final AuthRepository _authRepository;

  const RegisterUseCase(this._authRepository);

  @override
  Future<Either<Failure, Unit>> call(RegisterParams registerParams) =>
      _authRepository.register(registerParams.registerData);
}

class RegisterParams extends AppParams {
  final RegisterData registerData;

  RegisterParams(this.registerData);

  @override
  List<Object?> get props => [registerData];
}
