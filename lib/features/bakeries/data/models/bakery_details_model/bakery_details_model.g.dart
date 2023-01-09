// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bakery_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BakeryDetailsModel _$BakeryDetailsModelFromJson(Map<String, dynamic> json) =>
    BakeryDetailsModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      rating: (json['rating'] as num).toDouble(),
      address: json['address'] as String,
      phone: json['phone'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BakeryDetailsModelToJson(BakeryDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
      'address': instance.address,
      'phone': instance.phone,
      'products': instance.products,
    };
