import 'package:bakery/features/orders/data/models/collect_order_data_model/collect_order_data_model.dart';
import 'package:bakery/features/orders/domain/entities/collect_order_data.dart/collect_order_data.dart';

extension CollectOrderDataModelMapper on CollectOrderData {
  CollectOrderDataModel get toModel => CollectOrderDataModel(
        orderId: orderId,
        orderRating: orderRating,
        productId: productId,
      );
}
