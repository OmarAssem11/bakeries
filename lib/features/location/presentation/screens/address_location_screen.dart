import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/widgets/default_elevated_button.dart';
import 'package:bakery/features/location/presentation/cubit/location_cubit.dart';
import 'package:bakery/features/location/presentation/cubit/location_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressLocationScreen extends StatefulWidget {
  const AddressLocationScreen();

  @override
  State<AddressLocationScreen> createState() => _AddressLocationScreenState();
}

class _AddressLocationScreenState extends State<AddressLocationScreen> {
  Marker _origin = const Marker(markerId: MarkerId("value"));
  late final LocationCubit _locationCubit;
  late final double _subtotal;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _subtotal = ModalRoute.of(context)!.settings.arguments! as double,
    );
    _locationCubit = BlocProvider.of<LocationCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LocationCubit, LocationState>(
        listener: (context, state) {
          state.maybeMap(
            loading: (_) => _isLoading = true,
            orElse: () => _isLoading = false,
          );
          state.maybeWhen(
            serviceDisabled: () =>
                showErrorToast(S.current.pleaseEnableYourLocation),
            locationPermissionDenied: () =>
                showErrorToast(S.current.locationPermissionDenied),
            locationPermissionPermanentlyDenied: () =>
                showErrorToast(S.current.locationPermissionPermanentlyDenied),
            locationPermissionGranted: () => _locationCubit.locatePosition(),
            positionLocated: (latLng) => _locationCubit.addOriginMarker(latLng),
            originMarkerAdded: (marker) => _origin = marker,
            addressFromLatLng: (address) => Navigator.of(context).pushNamed(
              AppRoutes.checkout,
              arguments: CheckoutArguments(
                address: address,
                subtotal: _subtotal,
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(31.205753, 29.924526),
                  zoom: 14.4746,
                ),
                onMapCreated: (mapController) =>
                    _locationCubit.getLocationPermission(mapController),
                onTap: (latLng) => _locationCubit.addOriginMarker(latLng),
                markers: {
                  _origin,
                },
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: Insets.xxl),
                  child: FloatingActionButton(
                    onPressed: () => _locationCubit.locatePosition(),
                    backgroundColor: ColorManager.white.withOpacity(.7),
                    child: const Icon(
                      Icons.my_location_outlined,
                      color: ColorManager.black,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  margin: const EdgeInsets.only(bottom: Insets.xl),
                  child: DefaultElevatedButton(
                    onPressed: () => _locationCubit.getAddressFromLatLong(),
                    label: S.current.confirmAddress,
                    isLoading: _isLoading,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
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
