import 'package:json_annotation/json_annotation.dart';

part 'register_data_model.g.dart';

@JsonSerializable()
class RegisterDataModel {
  final String name;
  final String email;
  final String phone;
  final String password;

  const RegisterDataModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RegisterDataModelToJson(this);
}
