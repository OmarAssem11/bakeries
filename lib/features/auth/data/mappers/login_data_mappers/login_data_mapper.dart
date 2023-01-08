import 'package:bakery/features/auth/data/models/login_data_model/login_data_model.dart';
import 'package:bakery/features/auth/domain/entities/login_data/login_data.dart';

extension LoginDataMapper on LoginData {
  LoginDataModel get toModel => LoginDataModel(
        email: email,
        password: password,
      );
}
