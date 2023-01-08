import 'package:bakery/features/bakeries/data/models/bakery_model/bakery_model.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';

extension BakeryMapper on BakeryModel {
  Bakery get fromModel => Bakery(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
      );
}
