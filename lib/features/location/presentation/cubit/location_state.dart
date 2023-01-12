import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = LocationInitial;
  const factory LocationState.loading() = LocationLoading;

  const factory LocationState.serviceDisabled() = ServiceDisabled;
  const factory LocationState.locationPermissionsDenied() =
      LocationPermissionsDenied;
  const factory LocationState.locationPermissionsPermanentlyDenied() =
      LocationPermissionsPermanentlyDenied;
  const factory LocationState.permissionGranted() = LocationPermissionGranted;

  const factory LocationState.locatePosition(LatLng latLng) = LocatePosition;

  const factory LocationState.addressFromLatLng(String address) =
      AddressFromLatLng;

  const factory LocationState.markerAdded(Marker marker) = MarkerAdded;
}