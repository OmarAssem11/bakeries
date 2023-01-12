import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/core/domain/entities/user.dart';

extension UserMapper on User {
  UserModel get toModel => UserModel(
        id: '',
        name: name,
        email: email,
        password: password,
      );
}
