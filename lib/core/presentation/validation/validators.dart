import 'package:bakery/generated/l10n.dart';

String? emailValidator(String? email) {
  const String regexEmailFormat =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (email == null || email.isEmpty) {
    return S.current.emailCanNotBeEmpty;
  } else if (!RegExp(regexEmailFormat).hasMatch(email)) {
    return S.current.invalidEmailFormat;
  }
  return null;
}

String? passwordValidator(String? password) {
  if (password == null || password.length < 8) {
    return S.current.passwordCanNotBeLessThanEightCharacters;
  }
  return null;
}

String? phoneValidator(String? phone) {
  if (phone == null || phone.isEmpty) {
    return S.current.phoneCanNotBeEmpty;
  } else if (phone.substring(0, 2) != '01' || phone.length != 11) {
    return S.current.invalidPhoneNumber;
  }
  return null;
}

String? numberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return S.current.canNotBeEmpty;
  } else if (double.tryParse(value) == null) {
    return S.current.invalidNumber;
  }
  return null;
}

String? generalValidator({
  required String fieldName,
  required String? value,
}) {
  if (value == null || value.isEmpty) {
    return '$fieldName ${S.current.canNotBeEmpty}';
  }
  return null;
}
