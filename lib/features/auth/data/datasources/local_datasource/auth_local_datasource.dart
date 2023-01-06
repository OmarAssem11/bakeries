import 'package:bakery/core/data/models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<bool> saveUser(UserModel userModel);

  String? getUser();

  Future<bool> deleteUser();
}
