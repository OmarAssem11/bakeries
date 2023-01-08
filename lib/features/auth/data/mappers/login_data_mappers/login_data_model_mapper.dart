import 'package:bakery/features/auth/data/models/login_data_model/login_data_model.dart';
import 'package:bakery/features/auth/domain/entities/login_data/login_data.dart';

extension LoginDataModelMapper on LoginDataModel {
  LoginData get fromModel => LoginData(
        email: email,
        password: password,
      );
}
