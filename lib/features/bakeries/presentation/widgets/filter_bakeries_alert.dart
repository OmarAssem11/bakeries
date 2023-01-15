import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/routes_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/util/error_toast.dart';
import 'package:bakery/core/presentation/validation/validators.dart';
import 'package:bakery/core/presentation/widgets/default_elevated_button.dart';
import 'package:bakery/core/presentation/widgets/default_text_form_field.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/location/presentation/cubit/location_cubit.dart';
import 'package:bakery/features/location/presentation/cubit/location_state.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterBakeriesDialog extends StatefulWidget {
  const FilterBakeriesDialog();

  @override
  State<FilterBakeriesDialog> createState() => _FilterBakeriesDialogState();
}

class _FilterBakeriesDialogState extends State<FilterBakeriesDialog> {
  final _formKey = GlobalKey<FormState>();
  final _rangeController = TextEditingController();
  bool _isLoading = false;
  late final LocationCubit _locationCubit;
  late final BakeriesCubit _bakeriesCubit;

  @override
  void initState() {
    super.initState();
    _locationCubit = BlocProvider.of<LocationCubit>(context);
    _bakeriesCubit = BlocProvider.of<BakeriesCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.s20)),
      ),
      content: Container(
        color: ColorManager.white,
        padding: const EdgeInsets.all(Sizes.s16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.current.filterBakeriesByRange,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: Sizes.s8),
              DefaultTextFormField(
                controller: _rangeController,
                hintText: S.current.rangeByKm,
                keyboardType: TextInputType.number,
                validator: (value) => numberValidator(value),
              ),
              const SizedBox(height: Sizes.s20),
              BlocConsumer<BakeriesCubit, BakeriesState>(
                listener: (context, state) {
                  if (state is GetBakeriesSuccess) {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(
                      AppRoutes.filteredBakeries,
                      arguments: FilteredBakeriesArguments(
                        rangeText: _rangeController.text,
                        filteredBakeries: _bakeriesCubit.filteredBakeries,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return BlocConsumer<LocationCubit, LocationState>(
                    listener: (context, state) {
                      state.maybeMap(
                        loading: (_) => _isLoading = true,
                        orElse: () => _isLoading = false,
                      );
                      state.mapOrNull(
                        serviceDisabled: (_) =>
                            showErrorToast(S.current.pleaseEnableYourLocation),
                        locationPermissionDenied: (_) =>
                            showErrorToast(S.current.locationPermissionDenied),
                        locationPermissionPermanentlyDenied: (_) =>
                            showErrorToast(
                          S.current.locationPermissionPermanentlyDenied,
                        ),
                        locationPermissionGranted: (_) =>
                            _locationCubit.getLocationWithoutMap(),
                        positionLocated: (position) =>
                            _bakeriesCubit.getBakeriesByRange(
                          double.parse(_rangeController.text),
                          position.latLng,
                        ),
                      );
                    },
                    builder: (context, state) {
                      return DefaultElevatedButton(
                        label: S.current.filter,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _locationCubit.getLocationPermission();
                          }
                        },
                        isLoading: _isLoading,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilteredBakeriesArguments {
  final String rangeText;
  final List<Bakery> filteredBakeries;

  const FilteredBakeriesArguments({
    required this.rangeText,
    required this.filteredBakeries,
  });
}
