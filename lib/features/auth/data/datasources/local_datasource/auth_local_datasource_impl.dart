import 'dart:convert';

import 'package:bakery/core/data/constants/key_constants.dart';
import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/features/auth/data/datasources/local_datasource/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<bool> saveUser(UserModel userModel) => _sharedPreferences.setString(
        KeyConstants.user,
        jsonEncode(userModel.toJson()),
      );

  @override
  String? getUser() => _sharedPreferences.getString(KeyConstants.user);

  @override
  Future<bool> deleteUser() => _sharedPreferences.remove(KeyConstants.user);
}
