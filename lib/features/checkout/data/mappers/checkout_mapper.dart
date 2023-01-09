import 'package:bakery/features/checkout/data/models/checkout_data_model.dart';
import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';

extension CheckoutMapper on CheckoutData {
  CheckoutDataModel get toModel => CheckoutDataModel(
        address: address,
        phone: phone,
      );
}
