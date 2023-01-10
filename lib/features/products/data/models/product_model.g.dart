// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: json['categoryId'] as String,
      bakeryName: json['bakeryName'] as String?,
      bakeryImageUrl: json['bakeryImageUrl'] as String?,
      bakeryAddress: json['bakeryAddress'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'bakeryName': instance.bakeryName,
      'bakeryImageUrl': instance.bakeryImageUrl,
      'bakeryAddress': instance.bakeryAddress,
    };
