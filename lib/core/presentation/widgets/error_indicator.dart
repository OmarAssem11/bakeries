import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.current.somethingWentWrong,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
