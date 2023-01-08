import 'package:bakery/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:bakery/features/auth/domain/entities/register_data/register_data.dart';

extension RegisterDataModelMapper on RegisterDataModel {
  RegisterData get fromModel => RegisterData(
        name: name,
        email: email,
        password: password,
      );
}
