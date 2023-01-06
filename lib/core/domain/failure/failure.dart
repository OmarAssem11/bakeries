import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

abstract class Failure {}

@freezed
class RemoteFailure extends Failure with _$RemoteFailure {
  const factory RemoteFailure.unKnown() = _UnKnown;
}

@freezed
class LocalFailure extends Failure with _$LocalFailure {
  const factory LocalFailure.canNotAccess() = _CanNotAccess;
}
