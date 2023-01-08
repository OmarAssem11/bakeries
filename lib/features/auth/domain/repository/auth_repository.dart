import 'package:bakery/core/domain/entities/user.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/auth/domain/entities/login_data/login_data.dart';
import 'package:bakery/features/auth/domain/entities/register_data/register_data.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> register(RegisterData registerData);

  Future<Either<Failure, Unit>> login(LoginData loginData);

  Future<Either<Failure, Unit>> logout();

  Future<Either<Failure, Unit>> forgotPassword(String email);

  Future<Either<Failure, bool>> isLoggedIn();

  Future<Either<Failure, User>> getCurrentUser();
}
