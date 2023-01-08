import 'package:bakery/core/data/exceptions/return_app_exception.dart';
import 'package:bakery/features/bakeries/data/datasources/remote_datasource/bakeries_remote_datasource.dart';
import 'package:bakery/features/bakeries/data/models/bakery_details_model/bakery_details_model.dart';
import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:bakery/features/bakeries/data/services/bakeries_firebase_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BakeriesRemoteDataSource)
class BakeriesRemoteDataSourceImpl implements BakeriesRemoteDataSource {
  final BakeriesFirebaseService _bakeriesFirebaseService;

  const BakeriesRemoteDataSourceImpl(this._bakeriesFirebaseService);

  @override
  Future<List<BakeryModel>> getAllBakeries() async {
    try {
      return _bakeriesFirebaseService.getAllBakeries();
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }

  @override
  Future<BakeryDetailsModel> getBakeryDetails(String bakeryId) async {
    try {
      return _bakeriesFirebaseService.getBakeryDetails(bakeryId);
    } catch (exception) {
      throw returnRemoteAppException(exception);
    }
  }
}
