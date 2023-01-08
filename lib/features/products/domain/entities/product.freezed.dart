// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get bakeryId => throw _privateConstructorUsedError;
  String? get bakeryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String imageUrl,
      String? description,
      int? quantity,
      String? category,
      int? bakeryId,
      String? bakeryName});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? category = freezed,
    Object? bakeryId = freezed,
    Object? bakeryName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bakeryId: freezed == bakeryId
          ? _value.bakeryId
          : bakeryId // ignore: cast_nullable_to_non_nullable
              as int?,
      bakeryName: freezed == bakeryName
          ? _value.bakeryName
          : bakeryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String imageUrl,
      String? description,
      int? quantity,
      String? category,
      int? bakeryId,
      String? bakeryName});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? category = freezed,
    Object? bakeryId = freezed,
    Object? bakeryName = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bakeryId: freezed == bakeryId
          ? _value.bakeryId
          : bakeryId // ignore: cast_nullable_to_non_nullable
              as int?,
      bakeryName: freezed == bakeryName
          ? _value.bakeryName
          : bakeryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageUrl,
      this.description,
      this.quantity,
      this.category,
      this.bakeryId,
      this.bakeryName});

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String imageUrl;
  @override
  final String? description;
  @override
  final int? quantity;
  @override
  final String? category;
  @override
  final int? bakeryId;
  @override
  final String? bakeryName;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, imageUrl: $imageUrl, description: $description, quantity: $quantity, category: $category, bakeryId: $bakeryId, bakeryName: $bakeryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bakeryId, bakeryId) ||
                other.bakeryId == bakeryId) &&
            (identical(other.bakeryName, bakeryName) ||
                other.bakeryName == bakeryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, imageUrl,
      description, quantity, category, bakeryId, bakeryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final double price,
      required final String imageUrl,
      final String? description,
      final int? quantity,
      final String? category,
      final int? bakeryId,
      final String? bakeryName}) = _$_Product;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String get imageUrl;
  @override
  String? get description;
  @override
  int? get quantity;
  @override
  String? get category;
  @override
  int? get bakeryId;
  @override
  String? get bakeryName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
