import 'package:bakery/features/checkout/data/models/checkout_data_model.dart';

abstract class CheckoutRemoteDataSource {
  Future<String> checkout(CheckoutDataModel checkoutDataModel);
}
