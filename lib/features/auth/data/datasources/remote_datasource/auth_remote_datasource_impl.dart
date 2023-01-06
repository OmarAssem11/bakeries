import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/datasources/remote_datasource/auth_remote_datasource.dart';
import 'package:bakery/features/auth/data/models/login_model/login_model.dart';
import 'package:bakery/features/auth/data/models/register_model/register_model.dart';
import 'package:bakery/features/auth/data/services/auth_firebase_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthFirebaseService _authFirebaseService;

  const AuthRemoteDataSourceImpl(this._authFirebaseService);

  @override
  Future<UserModel> register(RegisterModel registerModel) async {
    try {
      return _authFirebaseService.register(registerModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<UserModel> login(LoginModel loginModel) async {
    try {
      return _authFirebaseService.login(loginModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<void> logout() async {
    try {
      return _authFirebaseService.logout();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<void> forgotPassword(String email) {
    try {
      return _authFirebaseService.forgotPassword(email);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  User? getCurrentUser() {
    try {
      return _authFirebaseService.getCurrentUser();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
