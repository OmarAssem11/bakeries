import 'package:bakery/features/location/presentation/cubit/location_state.dart';
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

  Future<void> getLocationPermission() async {
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
        emit(const LocationPermissionsDenied());
      }
    }
    if (permission == LocationPermission.deniedForever) {
      emit(const LocationPermissionsPermanentlyDenied());
    }
  }

  Future<void> locatePosition([GoogleMapController? controller]) async {
    emit(const LocationLoading());
    await getLocationPermission();
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final latLng = LatLng(position.latitude, position.longitude);
    final cameraPosition = CameraPosition(target: latLng, zoom: 14);
    if (controller != null) _mapController = controller;
    _mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    _currentPosition = latLng;
    emit(LocatePosition(latLng));
  }

  Future<void> getAddressFromLatLong() async {
    emit(const LocationLoading());
    final placemarks = await placemarkFromCoordinates(
      _currentPosition.latitude,
      _currentPosition.longitude,
    );
    final place = placemarks[0];
    final address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.country}';
    emit(AddressFromLatLng(address));
  }

  void addMarker(LatLng latLng) {
    _currentPosition = latLng;
    final cameraPosition = CameraPosition(target: latLng, zoom: 14);
    _mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    final marker = Marker(
      markerId: const MarkerId("o"),
      position: latLng,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );
    emit(MarkerAdded(marker));
  }
}
