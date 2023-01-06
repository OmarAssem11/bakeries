import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final String imageUrl;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.imageUrl = '',
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
