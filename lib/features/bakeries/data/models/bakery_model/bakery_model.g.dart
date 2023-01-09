// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bakery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BakeryModel _$BakeryModelFromJson(Map<String, dynamic> json) => BakeryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$BakeryModelToJson(BakeryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
    };
