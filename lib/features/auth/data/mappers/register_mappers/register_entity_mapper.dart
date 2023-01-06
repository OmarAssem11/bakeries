import 'package:bakery/features/auth/data/models/register_model/register_model.dart';
import 'package:bakery/features/auth/domain/entities/register_entity.dart';

extension RegisterEntityMapper on RegisterEntity {
  RegisterModel get toModel => RegisterModel(
        name: name,
        email: email,
        password: password,
      );
}
