import 'package:bakery/features/auth/data/models/login_model/login_model.dart';
import 'package:bakery/features/auth/domain/entities/login_entity.dart';

extension LoginEntityMapper on LoginEntity {
  LoginModel get toModel => LoginModel(
        email: email,
        password: password,
      );
}
