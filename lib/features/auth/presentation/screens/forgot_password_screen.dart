import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/custom_text_form_field.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:bakery/generated/assets.gen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen();

  @override
  State<ForgotPasswordScreen> createState() => _ForgoPasswordScreenState();
}

class _ForgoPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  late TextTheme _textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.resetPassword),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.forgotPassword.path,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: Sizes.s20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.xxl),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.forgotPassword,
                      style: _textTheme.titleLarge?.copyWith(fontSize: 28),
                    ),
                    const SizedBox(height: Sizes.s12),
                    Text(
                      S.current.forgotPasswordCaption,
                      style: _textTheme.bodyLarge,
                    ),
                    CustomTextFormField(
                      controller: _emailController,
                      hintText: S.current.emailAddress,
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) => emailValidator(email),
                    ),
                    const SizedBox(height: Sizes.s20),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        bool isLoading = false;
                        state.mapOrNull(
                          loading: (_) => isLoading = true,
                          error: (_) => showErrorToast(),
                          success: (_) =>
                              showErrorToast(S.current.checkYourEmail),
                        );
                        return CustomElevatedButton(
                          label: S.current.submit,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<AuthCubit>(context)
                                  .forgotPassword(_emailController.text);
                            }
                          },
                          isLoading: isLoading,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
