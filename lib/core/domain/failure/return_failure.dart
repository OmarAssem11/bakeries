import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';

Failure returnFailure(AppException appException) {
  if (appException is RemoteAppException) {
    return appException.map(
      unknown: (_) => const RemoteFailure.unKnown(),
    );
  } else {
    appException as LocalAppException;
    return appException.map(
      canNotAccess: (_) => const LocalFailure.canNotAccess(),
    );
  }
}
