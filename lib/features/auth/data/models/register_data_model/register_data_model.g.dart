// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) =>
    RegisterDataModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterDataModelToJson(RegisterDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
