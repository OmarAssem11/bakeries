import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_data.freezed.dart';

@freezed
class CheckoutData with _$CheckoutData {
  const factory CheckoutData({
    required String address,
    required String phone,
  }) = _CheckoutData;
}
