import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({required this.controller});

  final TextEditingController controller;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.s12),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: S.current.password,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(
              isObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
            onPressed: () => setState(() => isObscure = !isObscure),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.s12)),
          ),
          errorStyle: const TextStyle(fontSize: Sizes.s12),
        ),
        obscureText: isObscure,
        autocorrect: false,
        enableSuggestions: false,
        controller: widget.controller,
        validator: (password) => passwordValidator(password),
      ),
    );
  }
}
