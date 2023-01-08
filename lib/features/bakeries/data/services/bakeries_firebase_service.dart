import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/bakeries/data/models/bakery_details_model/bakery_details_model.dart';
import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BakeriesFirebaseService {
  final _bakeriesCollection =
      FirebaseFirestore.instance.collection(FirebasePath.bakeries);

  Future<List<BakeryModel>> getAllBakeries() async {
    final querySnapshot = await _bakeriesCollection.get();
    final bakeriesModels = querySnapshot.docs
        .map(
          (queryDocSnapshot) => BakeryModel.fromJson(queryDocSnapshot.data()),
        )
        .toList();
    return bakeriesModels;
  }

  Future<BakeryDetailsModel> getBakeryDetails(String bakeryId) async {
    final docSnapshot = await _bakeriesCollection.doc(bakeryId).get();
    final bakeryDetailsJson = docSnapshot.data()!;
    return BakeryDetailsModel.fromJson(bakeryDetailsJson);
  }
}
