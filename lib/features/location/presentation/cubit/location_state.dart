import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = LocationInitial;
  const factory LocationState.loading() = LocationLoading;

  const factory LocationState.serviceDisabled() = ServiceDisabled;
  const factory LocationState.locationPermissionDenied() =
      LocationPermissionDenied;
  const factory LocationState.locationPermissionPermanentlyDenied() =
      LocationPermissionPermanentlyDenied;
  const factory LocationState.locationPermissionGranted() =
      LocationPermissionGranted;

  const factory LocationState.positionLocated(LatLng latLng) = PositionLocated;

  const factory LocationState.addressFromLatLng(String address) =
      AddressFromLatLng;

  const factory LocationState.originMarkerAdded(Marker marker) =
      OriginMarkerAdded;

  const factory LocationState.markersAdded(List<Marker> markers) = MarkersAdded;
}
