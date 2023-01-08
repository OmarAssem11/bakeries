import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/toast.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/custom_text_form_field.dart';
import 'package:bakery/core/presentation/widgets/password_text_form_field.dart';
import 'package:bakery/features/auth/domain/entities/login_data/login_data.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late TextTheme _textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.xxl),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Sizes.s20),
              Text(
                S.current.login,
                style: _textTheme.titleLarge?.copyWith(fontSize: 32),
              ),
              const SizedBox(height: Sizes.s8),
              CustomTextFormField(
                controller: _emailController,
                hintText: S.current.emailAddress,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                validator: (email) => emailValidator(email),
              ),
              PasswordTextFormField(controller: _passwordController),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.forgotPassword),
                    child: Text(S.current.forgotPassword),
                  ),
                ],
              ),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  bool isLoading = false;
                  state.mapOrNull(
                    loading: (_) => isLoading = true,
                    error: (_) => showToast(),
                    success: (_) =>
                        WidgetsBinding.instance.addPostFrameCallback(
                      (_) => Navigator.of(context).pushReplacementNamed(
                        AppRoutes.bakeriesList,
                      ),
                    ),
                  );
                  return CustomElevatedButton(
                    label: S.current.login,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthCubit>(context).login(
                          LoginData(
                            email: _emailController.text,
                            password: _passwordController.text,
                          ),
                        );
                      }
                    },
                    isLoading: isLoading,
                  );
                },
              ),
              const SizedBox(height: Sizes.s8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.doNotHaveAnAccount,
                    style: _textTheme.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.register),
                    child: Text(S.current.register),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
