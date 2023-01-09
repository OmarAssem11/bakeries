import 'package:bakery/core/presentation/resources/routes_manager.dart';
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
  String address = 'search';
  double mapPadding = 0;
  LatLng? _currentPosition;
  Marker _origin = const Marker(markerId: MarkerId("value"));
  Geolocator geolocator = Geolocator();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.205753, 29.924526),
    zoom: 14.4746,
  );
  late GoogleMapController _controller;
  late double _subtotal;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _subtotal = ModalRoute.of(context)!.settings.arguments! as double;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            padding: EdgeInsets.only(bottom: mapPadding),
            onMapCreated: (GoogleMapController mapController) {
              _controller = mapController;
              locatePosition();
              setState(() {
                mapPadding = 265.0;
              });
            },
            myLocationEnabled: true,
            onTap: (position) {
              _currentPosition = position;
              addMarker(position);
            },
            markers: {
              _origin,
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () async {
                addMarker(await locatePosition());
              },
              child: const Icon(Icons.share_location_sharp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: SizedBox(
                height: 45,
                width: 231,
                child: CustomElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed(
                      AppRoutes.checkout,
                      arguments: CheckoutArguments(
                        address: 'Alex',
                        //await getAddressFromLatLong(_currentPosition!),
                        subtotal: _subtotal,
                      ),
                    );
                  },
                  label: S.current.confirmAddress,
                ),
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

  void addMarker(LatLng? pos) {
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

  Future<void> locationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showToast(S.current.pleaseEnableYourLocation);
    }

    permission = await Geolocator.checkPermission();
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

  Future<String> getAddressFromLatLong(LatLng position) async {
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final Placemark place = placemarks[0];
    return '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
  }

  Future<LatLng?> locatePosition() async {
    locationPermission();
    final Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final LatLng latLng = LatLng(position.latitude, position.longitude);
    _currentPosition = latLng;
    final CameraPosition cameraPosition =
        CameraPosition(target: latLng, zoom: 14);
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
