import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/checkout/data/models/checkout_data_model.dart';
import 'package:bakery/features/checkout/data/services/checkout_firebase_service.dart';
import 'package:bakery/features/checkout/domain/datasources/remote_datasource/checkout_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CheckoutRemoteDataSource)
class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource {
  final CheckoutFirebaseService _checkoutFirebaseService;

  const CheckoutRemoteDataSourceImpl(this._checkoutFirebaseService);

  @override
  Future<String> checkout(CheckoutDataModel checkoutDataModel) async {
    try {
      return await _checkoutFirebaseService.checkout(checkoutDataModel);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
