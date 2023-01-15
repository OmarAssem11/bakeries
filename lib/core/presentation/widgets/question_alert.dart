import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class QuestionDialog extends StatelessWidget {
  const QuestionDialog({
    required this.question,
    required this.onSubmit,
  });

  final String question;
  final Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.s20)),
      ),
      title: Text(
        question,
        style: textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            S.current.no,
            style: textTheme.bodyLarge,
          ),
        ),
        TextButton(
          onPressed: () {
            onSubmit();
            Navigator.of(context).pop();
          },
          child: Text(
            S.current.yes,
            style: textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
