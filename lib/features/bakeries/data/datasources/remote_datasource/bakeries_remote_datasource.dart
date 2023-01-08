import 'package:bakery/features/bakeries/data/models/bakery_details_model/bakery_details_model.dart';
import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';

abstract class BakeriesRemoteDataSource {
  Future<List<BakeryModel>> getAllBakeries();

  Future<BakeryDetailsModel> getBakeryDetails(String bakeryId);
}
