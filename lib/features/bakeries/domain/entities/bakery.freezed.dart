// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bakery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Bakery {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BakeryCopyWith<Bakery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BakeryCopyWith<$Res> {
  factory $BakeryCopyWith(Bakery value, $Res Function(Bakery) then) =
      _$BakeryCopyWithImpl<$Res, Bakery>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double rating,
      String? address,
      String? phone,
      LatLng? location,
      List<Product>? products});
}

/// @nodoc
class _$BakeryCopyWithImpl<$Res, $Val extends Bakery>
    implements $BakeryCopyWith<$Res> {
  _$BakeryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? rating = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? products = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BakeryCopyWith<$Res> implements $BakeryCopyWith<$Res> {
  factory _$$_BakeryCopyWith(_$_Bakery value, $Res Function(_$_Bakery) then) =
      __$$_BakeryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double rating,
      String? address,
      String? phone,
      LatLng? location,
      List<Product>? products});
}

/// @nodoc
class __$$_BakeryCopyWithImpl<$Res>
    extends _$BakeryCopyWithImpl<$Res, _$_Bakery>
    implements _$$_BakeryCopyWith<$Res> {
  __$$_BakeryCopyWithImpl(_$_Bakery _value, $Res Function(_$_Bakery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? rating = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_Bakery(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$_Bakery implements _Bakery {
  const _$_Bakery(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.rating,
      this.address,
      this.phone,
      this.location,
      final List<Product>? products})
      : _products = products;

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final double rating;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final LatLng? location;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Bakery(id: $id, name: $name, description: $description, imageUrl: $imageUrl, rating: $rating, address: $address, phone: $phone, location: $location, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bakery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      rating,
      address,
      phone,
      location,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BakeryCopyWith<_$_Bakery> get copyWith =>
      __$$_BakeryCopyWithImpl<_$_Bakery>(this, _$identity);
}

abstract class _Bakery implements Bakery {
  const factory _Bakery(
      {required final String id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final double rating,
      final String? address,
      final String? phone,
      final LatLng? location,
      final List<Product>? products}) = _$_Bakery;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  double get rating;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  LatLng? get location;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_BakeryCopyWith<_$_Bakery> get copyWith =>
      throw _privateConstructorUsedError;
}
