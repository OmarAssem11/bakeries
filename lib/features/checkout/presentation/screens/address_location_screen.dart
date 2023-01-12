import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/toast.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressLocationScreen extends StatefulWidget {
  const AddressLocationScreen();

  @override
  State<AddressLocationScreen> createState() => _AddressLocationScreenState();
}

class _AddressLocationScreenState extends State<AddressLocationScreen> {
  Marker _origin = const Marker(markerId: MarkerId("value"));
  LatLng? _currentPosition;
  late GoogleMapController _controller;
  late double _subtotal;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _subtotal = ModalRoute.of(context)!.settings.arguments! as double,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(31.205753, 29.924526),
              zoom: 14.4746,
            ),
            onMapCreated: (mapController) async {
              _controller = mapController;
              await _locatePosition();
              setState(() {});
            },
            onTap: (newPosition) {
              _currentPosition = newPosition;
              _addMarker(newPosition);
            },
            markers: {
              _origin,
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: Insets.xxl),
              child: FloatingActionButton(
                onPressed: () async {
                  _addMarker(await _locatePosition());
                },
                backgroundColor: ColorManager.white.withOpacity(.7),
                child: const Icon(
                  Icons.my_location_outlined,
                  color: ColorManager.black,
                ),
              ),
            ),
          ),
          if (_currentPosition != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Sizes.s40,
                width: MediaQuery.of(context).size.width * 0.52,
                margin: const EdgeInsets.only(bottom: Insets.xl),
                child: CustomElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed(
                      AppRoutes.checkout,
                      arguments: CheckoutArguments(
                        address:
                            await _getAddressFromLatLong(_currentPosition!),
                        subtotal: _subtotal,
                      ),
                    );
                  },
                  label: S.current.confirmAddress,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addMarker(LatLng? pos) {
    setState(() {
      final CameraPosition cameraPosition =
          CameraPosition(target: pos!, zoom: 14);
      _controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      _origin = Marker(
        markerId: const MarkerId("o"),
        position: pos,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    });
  }

  Future<void> _getLocationPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showToast(S.current.pleaseEnableYourLocation);
      return;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showToast(S.current.locationPermissionsDenied);
      }
    }
    if (permission == LocationPermission.deniedForever) {
      showToast(S.current.locationPermissionsPermanentlyDenied);
    }
  }

  Future<String> _getAddressFromLatLong(LatLng position) async {
    final placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final place = placemarks[0];
    return '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
  }

  Future<LatLng?> _locatePosition() async {
    await _getLocationPermission();
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final latLng = LatLng(position.latitude, position.longitude);
    _currentPosition = latLng;
    final cameraPosition = CameraPosition(target: latLng, zoom: 14);
    _controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    return _currentPosition;
  }
}

class CheckoutArguments {
  final String address;
  final double subtotal;

  const CheckoutArguments({
    required this.address,
    required this.subtotal,
  });
}
