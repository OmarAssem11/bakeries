import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.maxLines,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.s12),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.s20)),
          ),
          errorStyle: const TextStyle(fontSize: Sizes.s12),
        ),
        autocorrect: false,
        keyboardType: keyboardType,
        validator: validator,
        maxLines: maxLines,
      ),
    );
  }
}
