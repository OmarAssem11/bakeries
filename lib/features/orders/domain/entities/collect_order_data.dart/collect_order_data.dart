import 'package:freezed_annotation/freezed_annotation.dart';

part 'collect_order_data.freezed.dart';

@freezed
class CollectOrderData with _$CollectOrderData {
  const factory CollectOrderData({
    required String orderId,
    required double orderRating,
    required String productId,
  }) = _CollectOrderData;
}
