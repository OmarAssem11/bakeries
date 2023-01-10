import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/toast.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/custom_text_form_field.dart';
import 'package:bakery/features/cart/presentation/widgets/payment_summery.dart';
import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';
import 'package:bakery/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:bakery/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:bakery/features/checkout/presentation/screens/address_location_screen.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen();

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController(text: '01098031996');
  late CheckoutArguments _arguments;
  late TextTheme _textTheme;
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _arguments =
        ModalRoute.of(context)!.settings.arguments! as CheckoutArguments;
    _addressController.text = _arguments.address;
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Column(
          children: [
            Text(S.current.checkout),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Insets.l),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                controller: _addressController,
                hintText: S.current.address,
                prefixIcon: Icons.location_on_outlined,
                keyboardType: TextInputType.streetAddress,
                validator: (address) => generalValidator(
                  value: address,
                  fieldName: S.current.address,
                ),
              ),
              CustomTextFormField(
                controller: _phoneController,
                hintText: S.current.phone,
                prefixIcon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
                validator: (phone) => phoneValidator(phone),
              ),
              const SizedBox(height: Sizes.s16),
              Text(S.current.payWith, style: _textTheme.titleLarge),
              const SizedBox(height: Sizes.s16),
              Container(
                padding: const EdgeInsets.all(Insets.s),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Sizes.s16)),
                  border: Border.all(color: ColorManager.lightGrey),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: Sizes.s12,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const Icon(
                        Icons.done,
                        color: ColorManager.white,
                        size: Sizes.s20,
                      ),
                    ),
                    const SizedBox(width: Sizes.s16),
                    Text(
                      S.current.cashOnDelivery,
                      style: _textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Sizes.s16),
              PaymentSummery(
                subtotal: _arguments.subtotal,
                deliveryFee: 20,
              ),
              const Spacer(),
              BlocConsumer<CheckoutCubit, CheckoutState>(
                listener: (context, state) {
                  state.mapOrNull(
                    loading: (_) => isLoading = true,
                    error: (_) => showToast(),
                    success: (successState) =>
                        Navigator.of(context).pushNamedAndRemoveUntil(
                      AppRoutes.orderDetails,
                      (route) => route.isFirst,
                      arguments: successState.orderId,
                    ),
                  );
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                    label: S.current.placeOrder,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<CheckoutCubit>(context).checkout(
                          CheckoutData(
                            address: _addressController.text,
                            phone: _phoneController.text,
                          ),
                        );
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
    );
  }

  @override
  void dispose() {
    _addressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
