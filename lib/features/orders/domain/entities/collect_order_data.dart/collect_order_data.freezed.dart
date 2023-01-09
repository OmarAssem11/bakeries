// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collect_order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectOrderData {
  String get orderId => throw _privateConstructorUsedError;
  double get orderRating => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectOrderDataCopyWith<CollectOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectOrderDataCopyWith<$Res> {
  factory $CollectOrderDataCopyWith(
          CollectOrderData value, $Res Function(CollectOrderData) then) =
      _$CollectOrderDataCopyWithImpl<$Res, CollectOrderData>;
  @useResult
  $Res call({String orderId, double orderRating, String productId});
}

/// @nodoc
class _$CollectOrderDataCopyWithImpl<$Res, $Val extends CollectOrderData>
    implements $CollectOrderDataCopyWith<$Res> {
  _$CollectOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderRating = null,
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderRating: null == orderRating
          ? _value.orderRating
          : orderRating // ignore: cast_nullable_to_non_nullable
              as double,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectOrderDataCopyWith<$Res>
    implements $CollectOrderDataCopyWith<$Res> {
  factory _$$_CollectOrderDataCopyWith(
          _$_CollectOrderData value, $Res Function(_$_CollectOrderData) then) =
      __$$_CollectOrderDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, double orderRating, String productId});
}

/// @nodoc
class __$$_CollectOrderDataCopyWithImpl<$Res>
    extends _$CollectOrderDataCopyWithImpl<$Res, _$_CollectOrderData>
    implements _$$_CollectOrderDataCopyWith<$Res> {
  __$$_CollectOrderDataCopyWithImpl(
      _$_CollectOrderData _value, $Res Function(_$_CollectOrderData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderRating = null,
    Object? productId = null,
  }) {
    return _then(_$_CollectOrderData(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderRating: null == orderRating
          ? _value.orderRating
          : orderRating // ignore: cast_nullable_to_non_nullable
              as double,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CollectOrderData implements _CollectOrderData {
  const _$_CollectOrderData(
      {required this.orderId,
      required this.orderRating,
      required this.productId});

  @override
  final String orderId;
  @override
  final double orderRating;
  @override
  final String productId;

  @override
  String toString() {
    return 'CollectOrderData(orderId: $orderId, orderRating: $orderRating, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectOrderData &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderRating, orderRating) ||
                other.orderRating == orderRating) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, orderRating, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectOrderDataCopyWith<_$_CollectOrderData> get copyWith =>
      __$$_CollectOrderDataCopyWithImpl<_$_CollectOrderData>(this, _$identity);
}

abstract class _CollectOrderData implements CollectOrderData {
  const factory _CollectOrderData(
      {required final String orderId,
      required final double orderRating,
      required final String productId}) = _$_CollectOrderData;

  @override
  String get orderId;
  @override
  double get orderRating;
  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$_CollectOrderDataCopyWith<_$_CollectOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}
