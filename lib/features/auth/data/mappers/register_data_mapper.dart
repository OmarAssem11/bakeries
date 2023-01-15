import 'package:bakery/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:bakery/features/auth/domain/entities/register_data/register_data.dart';

extension RegisterDataMapper on RegisterData {
  RegisterDataModel get toModel => RegisterDataModel(
        name: name,
        email: email,
        phone: phone,
        password: password,
      );
}
