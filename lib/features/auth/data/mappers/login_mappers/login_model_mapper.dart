import 'package:bakery/features/auth/data/models/login_model/login_model.dart';
import 'package:bakery/features/auth/domain/entities/login_entity.dart';

extension LoginModelMapper on LoginModel {
  LoginEntity get fromModel => LoginEntity(
        email: email,
        password: password,
      );
}
