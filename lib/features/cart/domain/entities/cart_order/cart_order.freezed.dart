// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartOrder {
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartOrderCopyWith<CartOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOrderCopyWith<$Res> {
  factory $CartOrderCopyWith(CartOrder value, $Res Function(CartOrder) then) =
      _$CartOrderCopyWithImpl<$Res, CartOrder>;
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class _$CartOrderCopyWithImpl<$Res, $Val extends CartOrder>
    implements $CartOrderCopyWith<$Res> {
  _$CartOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartOrderCopyWith<$Res> implements $CartOrderCopyWith<$Res> {
  factory _$$_CartOrderCopyWith(
          _$_CartOrder value, $Res Function(_$_CartOrder) then) =
      __$$_CartOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class __$$_CartOrderCopyWithImpl<$Res>
    extends _$CartOrderCopyWithImpl<$Res, _$_CartOrder>
    implements _$$_CartOrderCopyWith<$Res> {
  __$$_CartOrderCopyWithImpl(
      _$_CartOrder _value, $Res Function(_$_CartOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$_CartOrder(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartOrder implements _CartOrder {
  const _$_CartOrder({required this.productId, required this.quantity});

  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartOrder(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartOrder &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartOrderCopyWith<_$_CartOrder> get copyWith =>
      __$$_CartOrderCopyWithImpl<_$_CartOrder>(this, _$identity);
}

abstract class _CartOrder implements CartOrder {
  const factory _CartOrder(
      {required final String productId,
      required final int quantity}) = _$_CartOrder;

  @override
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_CartOrderCopyWith<_$_CartOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
