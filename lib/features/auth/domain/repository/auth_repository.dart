import 'package:bakery/core/domain/entities/user.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/auth/domain/entities/login_entity.dart';
import 'package:bakery/features/auth/domain/entities/register_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> register(RegisterEntity registerEntity);

  Future<Either<Failure, Unit>> login(LoginEntity loginEntity);

  Future<Either<Failure, Unit>> logout();

  Future<Either<Failure, Unit>> forgotPassword(String email);

  Future<Either<Failure, bool>> isLoggedIn();

  Future<Either<Failure, User>> getCurrentUser();
}
