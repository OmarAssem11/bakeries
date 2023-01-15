import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/core/domain/entities/user.dart';

extension UserModelMapper on UserModel {
  User get fromModel => User(
        name: name,
        email: email,
        phone: phone,
        password: password,
      );
}
