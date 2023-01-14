import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/location/presentation/cubit/location_cubit.dart';
import 'package:bakery/features/location/presentation/cubit/location_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BakeriesLocationScreen extends StatefulWidget {
  const BakeriesLocationScreen();

  @override
  State<BakeriesLocationScreen> createState() => _BakeriesLocationScreenState();
}

class _BakeriesLocationScreenState extends State<BakeriesLocationScreen> {
  Marker _origin = const Marker(markerId: MarkerId("value"));
  List<Marker> _bakeriesMarkers = [];
  late final LocationCubit _locationCubit;
  late final BakeriesCubit _bakeriesCubit;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _locationCubit = BlocProvider.of<LocationCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<BakeriesCubit, BakeriesState>(
        listener: (context, state) {
          if (state is GetBakeriesSuccess) {
            final latLngList = _bakeriesCubit.allBakeries
                .map((bakery) => bakery.location!)
                .toList();
            _locationCubit.addBakeriesMarkers(latLngList);
          }
        },
        builder: (context, state) => BlocConsumer<LocationCubit, LocationState>(
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
              locationPermissionGranted: () {
                _locationCubit.locatePosition();
                _bakeriesCubit.getAllBakeries();
              },
              positionLocated: (latLng) =>
                  _locationCubit.addOriginMarker(latLng),
              originMarkerAdded: (marker) => _origin = marker,
              markersAdded: (markers) => _bakeriesMarkers = markers,
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
                  markers: {
                    _origin,
                    ..._bakeriesMarkers,
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
                    width: MediaQuery.of(context).size.width * 0.52,
                    margin: const EdgeInsets.only(bottom: Insets.xl),
                    child: CustomElevatedButton(
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
      ),
    );
  }
}
