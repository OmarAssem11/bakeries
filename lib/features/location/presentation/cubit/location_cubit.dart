import 'package:bakery/features/location/presentation/cubit/location_state.dart';
import 'package:bakery/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(const LocationInitial());

  late GoogleMapController _mapController;
  late LatLng _currentPosition;

  Future<void> getLocationPermission([GoogleMapController? controller]) async {
    emit(const LocationLoading());
    final isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      emit(const ServiceDisabled());
      return;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(const LocationPermissionDenied());
      }
    }
    if (permission == LocationPermission.deniedForever) {
      emit(const LocationPermissionPermanentlyDenied());
    }
    if (controller != null) _mapController = controller;
    emit(const LocationPermissionGranted());
  }

  Future<void> locatePosition() async {
    emit(const LocationLoading());
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final latLng = LatLng(position.latitude, position.longitude);
    final cameraPosition = CameraPosition(target: latLng, zoom: 14);
    _mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    _currentPosition = latLng;
    emit(PositionLocated(latLng));
  }

  Future<void> getLocationWithoutMap() async {
    emit(const LocationLoading());
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final latLng = LatLng(position.latitude, position.longitude);
    emit(PositionLocated(latLng));
  }

  Future<void> getAddressFromLatLong() async {
    emit(const LocationLoading());
    final placemarks = await placemarkFromCoordinates(
      _currentPosition.latitude,
      _currentPosition.longitude,
    );
    final place = placemarks.first;
    final address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.country}';
    emit(AddressFromLatLng(address));
  }

  void addOriginMarker(LatLng latLng) {
    _currentPosition = latLng;
    final cameraPosition = CameraPosition(target: latLng, zoom: 14);
    _mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    final marker = Marker(
      markerId: const MarkerId("origin"),
      position: latLng,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );
    emit(OriginMarkerAdded(marker));
  }

  Future<void> addBakeriesMarkers(List<LatLng> latLngList) async {
    emit(const LocationLoading());
    final List<Marker> markers = [];
    for (final latLng in latLngList) {
      final marker = Marker(
        markerId: const MarkerId("bakery"),
        position: latLng,
        icon: await BitmapDescriptor.fromAssetImage(
          ImageConfiguration.empty,
          Assets.images.bakery.path,
        ),
      );
      markers.add(marker);
    }
    emit(MarkersAdded(markers));
  }
}
