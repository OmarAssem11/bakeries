import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    required String name,
    required String email,
    required String password,
    @Default('') String imageUrl,
  }) = _User;
}
