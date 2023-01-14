import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/bakeries/domain/usecases/get_all_bakeries_usecases.dart';
import 'package:bakery/features/bakeries/domain/usecases/get_bakery_details_usecase.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class BakeriesCubit extends Cubit<BakeriesState> {
  BakeriesCubit(
    this._getAllBakeriesUseCase,
    this._getBakeryDetailsUseCase,
  ) : super(const BakeriesInitial());

  final GetAllBakeriesUseCase _getAllBakeriesUseCase;
  final GetBakeryDetailsUseCase _getBakeryDetailsUseCase;

  List<Bakery> allBakeries = [];
  List<Bakery> filteredBakeries = [];

  Future<void> getAllBakeries() async {
    emit(const GetBakeriesLoading());
    final result = await _getAllBakeriesUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetBakeriesError(),
        (bakeries) {
          allBakeries = bakeries;
          return const GetBakeriesSuccess();
        },
      ),
    );
  }

  Future<void> getBakery(String bakeryId) async {
    emit(const GetBakeryDetailsLoading());
    final result = await _getBakeryDetailsUseCase(
      BakeryDetailsParams(bakeryId: bakeryId),
    );
    emit(
      result.fold(
        (failure) => const GetBakeryDetailsError(),
        (bakery) => GetBakeryDetailsSuccess(bakery),
      ),
    );
  }

  void getBakeriesByRange(double range, LatLng userLocation) {
    emit(const GetBakeriesLoading());
    filteredBakeries = allBakeries
        .where(
          (bakery) =>
              range * 1000 >=
              Geolocator.distanceBetween(
                bakery.location!.latitude,
                bakery.location!.longitude,
                userLocation.latitude,
                userLocation.longitude,
              ),
        )
        .toList();
    emit(const GetBakeriesSuccess());
  }
}
