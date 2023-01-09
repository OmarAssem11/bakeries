import 'package:json_annotation/json_annotation.dart';

part 'checkout_data_model.g.dart';

@JsonSerializable()
class CheckoutDataModel {
  final String address;
  final String phone;

  const CheckoutDataModel({
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$CheckoutDataModelToJson(this);
}
