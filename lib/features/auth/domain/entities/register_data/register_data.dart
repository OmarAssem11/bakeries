import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) = _RegisterData;
}
