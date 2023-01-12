// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationInitialCopyWith<$Res> {
  factory _$$LocationInitialCopyWith(
          _$LocationInitial value, $Res Function(_$LocationInitial) then) =
      __$$LocationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationInitialCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationInitial>
    implements _$$LocationInitialCopyWith<$Res> {
  __$$LocationInitialCopyWithImpl(
      _$LocationInitial _value, $Res Function(_$LocationInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationInitial implements LocationInitial {
  const _$LocationInitial();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationInitial implements LocationState {
  const factory LocationInitial() = _$LocationInitial;
}

/// @nodoc
abstract class _$$LocationLoadingCopyWith<$Res> {
  factory _$$LocationLoadingCopyWith(
          _$LocationLoading value, $Res Function(_$LocationLoading) then) =
      __$$LocationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationLoadingCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationLoading>
    implements _$$LocationLoadingCopyWith<$Res> {
  __$$LocationLoadingCopyWithImpl(
      _$LocationLoading _value, $Res Function(_$LocationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationLoading implements LocationLoading {
  const _$LocationLoading();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationLoading implements LocationState {
  const factory LocationLoading() = _$LocationLoading;
}

/// @nodoc
abstract class _$$ServiceDisabledCopyWith<$Res> {
  factory _$$ServiceDisabledCopyWith(
          _$ServiceDisabled value, $Res Function(_$ServiceDisabled) then) =
      __$$ServiceDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceDisabledCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$ServiceDisabled>
    implements _$$ServiceDisabledCopyWith<$Res> {
  __$$ServiceDisabledCopyWithImpl(
      _$ServiceDisabled _value, $Res Function(_$ServiceDisabled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceDisabled implements ServiceDisabled {
  const _$ServiceDisabled();

  @override
  String toString() {
    return 'LocationState.serviceDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return serviceDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return serviceDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return serviceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return serviceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled(this);
    }
    return orElse();
  }
}

abstract class ServiceDisabled implements LocationState {
  const factory ServiceDisabled() = _$ServiceDisabled;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedCopyWith<$Res> {
  factory _$$LocationPermissionDeniedCopyWith(_$LocationPermissionDenied value,
          $Res Function(_$LocationPermissionDenied) then) =
      __$$LocationPermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionDeniedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationPermissionDenied>
    implements _$$LocationPermissionDeniedCopyWith<$Res> {
  __$$LocationPermissionDeniedCopyWithImpl(_$LocationPermissionDenied _value,
      $Res Function(_$LocationPermissionDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationPermissionDenied implements LocationPermissionDenied {
  const _$LocationPermissionDenied();

  @override
  String toString() {
    return 'LocationState.locationPermissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return locationPermissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return locationPermissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return locationPermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return locationPermissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionDenied implements LocationState {
  const factory LocationPermissionDenied() = _$LocationPermissionDenied;
}

/// @nodoc
abstract class _$$LocationPermissionPermanentlyDeniedCopyWith<$Res> {
  factory _$$LocationPermissionPermanentlyDeniedCopyWith(
          _$LocationPermissionPermanentlyDenied value,
          $Res Function(_$LocationPermissionPermanentlyDenied) then) =
      __$$LocationPermissionPermanentlyDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionPermanentlyDeniedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res,
        _$LocationPermissionPermanentlyDenied>
    implements _$$LocationPermissionPermanentlyDeniedCopyWith<$Res> {
  __$$LocationPermissionPermanentlyDeniedCopyWithImpl(
      _$LocationPermissionPermanentlyDenied _value,
      $Res Function(_$LocationPermissionPermanentlyDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationPermissionPermanentlyDenied
    implements LocationPermissionPermanentlyDenied {
  const _$LocationPermissionPermanentlyDenied();

  @override
  String toString() {
    return 'LocationState.locationPermissionPermanentlyDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionPermanentlyDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return locationPermissionPermanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return locationPermissionPermanentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionPermanentlyDenied != null) {
      return locationPermissionPermanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return locationPermissionPermanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return locationPermissionPermanentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionPermanentlyDenied != null) {
      return locationPermissionPermanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionPermanentlyDenied implements LocationState {
  const factory LocationPermissionPermanentlyDenied() =
      _$LocationPermissionPermanentlyDenied;
}

/// @nodoc
abstract class _$$LocationPermissionGrantedCopyWith<$Res> {
  factory _$$LocationPermissionGrantedCopyWith(
          _$LocationPermissionGranted value,
          $Res Function(_$LocationPermissionGranted) then) =
      __$$LocationPermissionGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionGrantedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationPermissionGranted>
    implements _$$LocationPermissionGrantedCopyWith<$Res> {
  __$$LocationPermissionGrantedCopyWithImpl(_$LocationPermissionGranted _value,
      $Res Function(_$LocationPermissionGranted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationPermissionGranted implements LocationPermissionGranted {
  const _$LocationPermissionGranted();

  @override
  String toString() {
    return 'LocationState.locationPermissionGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return locationPermissionGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return locationPermissionGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionGranted != null) {
      return locationPermissionGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return locationPermissionGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return locationPermissionGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (locationPermissionGranted != null) {
      return locationPermissionGranted(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionGranted implements LocationState {
  const factory LocationPermissionGranted() = _$LocationPermissionGranted;
}

/// @nodoc
abstract class _$$LocatePositionCopyWith<$Res> {
  factory _$$LocatePositionCopyWith(
          _$LocatePosition value, $Res Function(_$LocatePosition) then) =
      __$$LocatePositionCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$LocatePositionCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocatePosition>
    implements _$$LocatePositionCopyWith<$Res> {
  __$$LocatePositionCopyWithImpl(
      _$LocatePosition _value, $Res Function(_$LocatePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$LocatePosition(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$LocatePosition implements LocatePosition {
  const _$LocatePosition(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'LocationState.locatePosition(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocatePosition &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocatePositionCopyWith<_$LocatePosition> get copyWith =>
      __$$LocatePositionCopyWithImpl<_$LocatePosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return locatePosition(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return locatePosition?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (locatePosition != null) {
      return locatePosition(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return locatePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return locatePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (locatePosition != null) {
      return locatePosition(this);
    }
    return orElse();
  }
}

abstract class LocatePosition implements LocationState {
  const factory LocatePosition(final LatLng latLng) = _$LocatePosition;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$LocatePositionCopyWith<_$LocatePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressFromLatLngCopyWith<$Res> {
  factory _$$AddressFromLatLngCopyWith(
          _$AddressFromLatLng value, $Res Function(_$AddressFromLatLng) then) =
      __$$AddressFromLatLngCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$AddressFromLatLngCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$AddressFromLatLng>
    implements _$$AddressFromLatLngCopyWith<$Res> {
  __$$AddressFromLatLngCopyWithImpl(
      _$AddressFromLatLng _value, $Res Function(_$AddressFromLatLng) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressFromLatLng(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressFromLatLng implements AddressFromLatLng {
  const _$AddressFromLatLng(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'LocationState.addressFromLatLng(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressFromLatLng &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressFromLatLngCopyWith<_$AddressFromLatLng> get copyWith =>
      __$$AddressFromLatLngCopyWithImpl<_$AddressFromLatLng>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return addressFromLatLng(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return addressFromLatLng?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (addressFromLatLng != null) {
      return addressFromLatLng(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return addressFromLatLng(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return addressFromLatLng?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (addressFromLatLng != null) {
      return addressFromLatLng(this);
    }
    return orElse();
  }
}

abstract class AddressFromLatLng implements LocationState {
  const factory AddressFromLatLng(final String address) = _$AddressFromLatLng;

  String get address;
  @JsonKey(ignore: true)
  _$$AddressFromLatLngCopyWith<_$AddressFromLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OriginMarkerAddedCopyWith<$Res> {
  factory _$$OriginMarkerAddedCopyWith(
          _$OriginMarkerAdded value, $Res Function(_$OriginMarkerAdded) then) =
      __$$OriginMarkerAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({Marker marker});
}

/// @nodoc
class __$$OriginMarkerAddedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$OriginMarkerAdded>
    implements _$$OriginMarkerAddedCopyWith<$Res> {
  __$$OriginMarkerAddedCopyWithImpl(
      _$OriginMarkerAdded _value, $Res Function(_$OriginMarkerAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marker = null,
  }) {
    return _then(_$OriginMarkerAdded(
      null == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as Marker,
    ));
  }
}

/// @nodoc

class _$OriginMarkerAdded implements OriginMarkerAdded {
  const _$OriginMarkerAdded(this.marker);

  @override
  final Marker marker;

  @override
  String toString() {
    return 'LocationState.originMarkerAdded(marker: $marker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginMarkerAdded &&
            (identical(other.marker, marker) || other.marker == marker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginMarkerAddedCopyWith<_$OriginMarkerAdded> get copyWith =>
      __$$OriginMarkerAddedCopyWithImpl<_$OriginMarkerAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return originMarkerAdded(marker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return originMarkerAdded?.call(marker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (originMarkerAdded != null) {
      return originMarkerAdded(marker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return originMarkerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return originMarkerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (originMarkerAdded != null) {
      return originMarkerAdded(this);
    }
    return orElse();
  }
}

abstract class OriginMarkerAdded implements LocationState {
  const factory OriginMarkerAdded(final Marker marker) = _$OriginMarkerAdded;

  Marker get marker;
  @JsonKey(ignore: true)
  _$$OriginMarkerAddedCopyWith<_$OriginMarkerAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkersAddedCopyWith<$Res> {
  factory _$$MarkersAddedCopyWith(
          _$MarkersAdded value, $Res Function(_$MarkersAdded) then) =
      __$$MarkersAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Marker> markers});
}

/// @nodoc
class __$$MarkersAddedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$MarkersAdded>
    implements _$$MarkersAddedCopyWith<$Res> {
  __$$MarkersAddedCopyWithImpl(
      _$MarkersAdded _value, $Res Function(_$MarkersAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
  }) {
    return _then(_$MarkersAdded(
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>,
    ));
  }
}

/// @nodoc

class _$MarkersAdded implements MarkersAdded {
  const _$MarkersAdded(final List<Marker> markers) : _markers = markers;

  final List<Marker> _markers;
  @override
  List<Marker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  @override
  String toString() {
    return 'LocationState.markersAdded(markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkersAdded &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkersAddedCopyWith<_$MarkersAdded> get copyWith =>
      __$$MarkersAddedCopyWithImpl<_$MarkersAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() serviceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function() locationPermissionPermanentlyDenied,
    required TResult Function() locationPermissionGranted,
    required TResult Function(LatLng latLng) locatePosition,
    required TResult Function(String address) addressFromLatLng,
    required TResult Function(Marker marker) originMarkerAdded,
    required TResult Function(List<Marker> markers) markersAdded,
  }) {
    return markersAdded(markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? serviceDisabled,
    TResult? Function()? locationPermissionDenied,
    TResult? Function()? locationPermissionPermanentlyDenied,
    TResult? Function()? locationPermissionGranted,
    TResult? Function(LatLng latLng)? locatePosition,
    TResult? Function(String address)? addressFromLatLng,
    TResult? Function(Marker marker)? originMarkerAdded,
    TResult? Function(List<Marker> markers)? markersAdded,
  }) {
    return markersAdded?.call(markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? serviceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function()? locationPermissionPermanentlyDenied,
    TResult Function()? locationPermissionGranted,
    TResult Function(LatLng latLng)? locatePosition,
    TResult Function(String address)? addressFromLatLng,
    TResult Function(Marker marker)? originMarkerAdded,
    TResult Function(List<Marker> markers)? markersAdded,
    required TResult orElse(),
  }) {
    if (markersAdded != null) {
      return markersAdded(markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(LocationLoading value) loading,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationPermissionPermanentlyDenied value)
        locationPermissionPermanentlyDenied,
    required TResult Function(LocationPermissionGranted value)
        locationPermissionGranted,
    required TResult Function(LocatePosition value) locatePosition,
    required TResult Function(AddressFromLatLng value) addressFromLatLng,
    required TResult Function(OriginMarkerAdded value) originMarkerAdded,
    required TResult Function(MarkersAdded value) markersAdded,
  }) {
    return markersAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(LocationLoading value)? loading,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult? Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult? Function(LocatePosition value)? locatePosition,
    TResult? Function(AddressFromLatLng value)? addressFromLatLng,
    TResult? Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult? Function(MarkersAdded value)? markersAdded,
  }) {
    return markersAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(LocationLoading value)? loading,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationPermissionPermanentlyDenied value)?
        locationPermissionPermanentlyDenied,
    TResult Function(LocationPermissionGranted value)?
        locationPermissionGranted,
    TResult Function(LocatePosition value)? locatePosition,
    TResult Function(AddressFromLatLng value)? addressFromLatLng,
    TResult Function(OriginMarkerAdded value)? originMarkerAdded,
    TResult Function(MarkersAdded value)? markersAdded,
    required TResult orElse(),
  }) {
    if (markersAdded != null) {
      return markersAdded(this);
    }
    return orElse();
  }
}

abstract class MarkersAdded implements LocationState {
  const factory MarkersAdded(final List<Marker> markers) = _$MarkersAdded;

  List<Marker> get markers;
  @JsonKey(ignore: true)
  _$$MarkersAddedCopyWith<_$MarkersAdded> get copyWith =>
      throw _privateConstructorUsedError;
}
