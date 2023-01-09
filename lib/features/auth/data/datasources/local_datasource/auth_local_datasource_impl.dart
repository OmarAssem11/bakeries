import 'dart:convert';

import 'package:bakery/core/data/constants/key_constants.dart';
import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<bool> saveUser(UserModel userModel) async {
    try {
      return await _sharedPreferences.setString(
        KeyConstants.user,
        jsonEncode(userModel.toJson()),
      );
    } catch (exception) {
      throw returnLocalAppException(exception);
    }
  }

  @override
  String? getUser() {
    try {
      return _sharedPreferences.getString(KeyConstants.user);
    } catch (exception) {
      throw returnLocalAppException(exception);
    }
  }

  @override
  Future<bool> deleteUser() async {
    try {
      return await _sharedPreferences.remove(KeyConstants.user);
    } catch (exception) {
      throw returnLocalAppException(exception);
    }
  }
}
