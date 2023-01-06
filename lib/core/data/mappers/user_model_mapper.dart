import 'package:bakery/core/data/models/user_model.dart';
import 'package:bakery/core/domain/entities/user.dart';

extension UserModelMapper on UserModel {
  User get fromModel => User(
        id: id,
        name: name,
        email: email,
        password: password,
        imageUrl: imageUrl,
      );
}
