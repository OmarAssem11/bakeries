import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:bakery/features/categories/data/models/category_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CategoriesFirebaseService {
  final _categoriesCollection =
      FirebaseFirestore.instance.collection(FirebasePath.categories);
  final _bakeriesCollection =
      FirebaseFirestore.instance.collection(FirebasePath.bakeries);

  Future<List<CategoryModel>> getAllCategories() async {
    final querySnapshot = await _categoriesCollection.get();
    final categoriesModels = querySnapshot.docs
        .map(
          (queryDocSnapshot) => CategoryModel.fromJson(queryDocSnapshot.data()),
        )
        .toList();
    return categoriesModels;
  }

  Future<List<BakeryModel>> getCategoryBakeries(String categoryId) async {
    final querySnapshot = await _bakeriesCollection.get();
    final List<BakeryModel> bakeriesModels = [];
    for (final queryDocSnapshot in querySnapshot.docs) {
      final productsJsonList =
          queryDocSnapshot.get(FirebasePath.products) as List<dynamic>;
      final categoriesIds = productsJsonList.map((json) {
        json as Map<String, dynamic>;
        return json[FirebasePath.categoryId] as String;
      }).toList();
      final exist = categoriesIds.contains(categoryId);
      if (exist) {
        final bakeryModel = BakeryModel.fromJson(queryDocSnapshot.data());
        bakeriesModels.add(bakeryModel);
      }
    }
    return bakeriesModels;
  }
}
