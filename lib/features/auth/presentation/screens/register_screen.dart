import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/core/presentation/widgets/default_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/default_text_form_field.dart';
import 'package:bakery/core/presentation/widgets/password_text_form_field.dart';
import 'package:bakery/features/auth/domain/entities/register_data/register_data.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bakery/features/auth/presentation/cubit/auth_state.dart';
import 'package:bakery/features/auth/presentation/widgets/clipped_image.dart';
import 'package:bakery/generated/assets.gen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClippedImage(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .37,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.images.bakeries.path,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.xxl),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.register,
                      style: _textTheme.titleLarge?.copyWith(fontSize: 32),
                    ),
                    const SizedBox(height: Sizes.s12),
                    Text(
                      S.current.registerCaption,
                      style: _textTheme.bodyLarge,
                    ),
                    DefaultTextFormField(
                      controller: _nameController,
                      hintText: S.current.fullName,
                      prefixIcon: Icons.person_outline,
                      keyboardType: TextInputType.name,
                      validator: (name) => generalValidator(
                        value: name,
                        fieldName: S.current.fullName,
                      ),
                    ),
                    DefaultTextFormField(
                      controller: _emailController,
                      hintText: S.current.emailAddress,
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) => emailValidator(email),
                    ),
                    DefaultTextFormField(
                      controller: _phoneController,
                      hintText: S.current.phoneNumber,
                      prefixIcon: Icons.phone_android_outlined,
                      keyboardType: TextInputType.phone,
                      validator: (phone) => phoneValidator(phone),
                    ),
                    PasswordTextFormField(controller: _passwordController),
                    const SizedBox(height: Sizes.s16),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        bool isLoading = false;
                        state.mapOrNull(
                          loading: (_) => isLoading = true,
                          error: (_) => showErrorToast(),
                          success: (_) =>
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);

                            Navigator.of(context).pushReplacementNamed(
                              AppRoutes.bakeries,
                            );
                          }),
                        );
                        return DefaultElevatedButton(
                          label: S.current.register,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<AuthCubit>(context).register(
                                RegisterData(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  phone: _phoneController.text,
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
                          S.current.alreadyHaveAnAccount,
                          style: _textTheme.bodyMedium,
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.login),
                          child: Text(S.current.login),
                        ),
                      ],
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
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
