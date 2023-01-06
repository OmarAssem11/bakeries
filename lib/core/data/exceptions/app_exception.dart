import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

abstract class AppException {}

@freezed
class RemoteAppException extends AppException with _$RemoteAppException {
  const factory RemoteAppException.unknown() = _RemoteUnknown;
}

@freezed
class LocalAppException extends AppException with _$LocalAppException {
  const factory LocalAppException.canNotAccess() = _CanNotAccess;
}
