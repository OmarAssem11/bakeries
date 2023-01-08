import 'package:bakery/core/data/constants/firebase_path.dart';
import 'package:bakery/features/products/data/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProductsFirebaseService {
  final _productsCollection =
      FirebaseFirestore.instance.collection(FirebasePath.products);

  Future<ProductModel> getProductDetails(String productId) async {
    final docSnapshot = await _productsCollection.doc(productId).get();
    return ProductModel.fromJson(docSnapshot.data()!);
  }
}
