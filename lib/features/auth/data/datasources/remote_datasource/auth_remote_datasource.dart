import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/models/login_model/login_model.dart';
import 'package:bakery/features/auth/data/models/register_model/register_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> register(RegisterModel registerModel);

  Future<UserModel> login(LoginModel loginModel);

  Future<void> logout();

  Future<void> forgotPassword(String email);

  User? getCurrentUser();
}
