import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:firebase_core/firebase_core.dart';

RemoteAppException returnRemoteAppException(Object exception) {
  if (exception is FirebaseException) {
    switch (exception.code) {
      default:
        return const RemoteAppException.unknown();
    }
  } else {
    return const RemoteAppException.unknown();
  }
}

LocalAppException returnLocalAppException(Object exception) {
  return const LocalAppException.canNotAccess();
}
