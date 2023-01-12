import 'package:bakery/generated/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showErrorToast([String? message]) => Fluttertoast.showToast(
      msg: message ?? S.current.somethingWentWrong,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
