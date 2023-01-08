import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/models/login_data_model/login_data_model.dart';
import 'package:bakery/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> register(RegisterDataModel registerModel);

  Future<UserModel> login(LoginDataModel loginModel);

  Future<void> logout();

  Future<void> forgotPassword(String email);

  User? getCurrentUser();
}
