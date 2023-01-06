import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

void showDoneSnackBar({
  required BuildContext context,
  required String message,
}) {
  final snackBar = SnackBar(
    backgroundColor: ColorManager.done,
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(message),
        const Icon(
          Icons.done,
          color: ColorManager.white,
          size: Sizes.s24,
        )
      ],
    ),
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
