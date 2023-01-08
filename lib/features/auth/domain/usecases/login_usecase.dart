import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/auth/domain/entities/login_data/login_data.dart';
import 'package:bakery/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase implements UseCase<Unit, LoginParams> {
  final AuthRepository _authRepository;

  const LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, Unit>> call(LoginParams loginParams) =>
      _authRepository.login(loginParams.loginData);
}

class LoginParams extends AppParams {
  final LoginData loginData;

  LoginParams(this.loginData);

  @override
  List<Object?> get props => [loginData];
}
