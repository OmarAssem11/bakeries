import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/bakeries/domain/usecases/get_all_bakeries_usecases.dart';
import 'package:bakery/features/bakeries/domain/usecases/get_bakery_details_usecase.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BakeriesCubit extends Cubit<BakeriesState> {
  BakeriesCubit(
    this._getAllBakeriesUseCase,
    this._getBakeryDetailsUseCase,
  ) : super(const BakeriesInitial());

  final GetAllBakeriesUseCase _getAllBakeriesUseCase;
  final GetBakeryDetailsUseCase _getBakeryDetailsUseCase;

  Future<void> getAllBakeries() async {
    emit(const GetAllBakeriesLoading());
    final result = await _getAllBakeriesUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetAllBakeriesError(),
        (bakeriesList) => GetAllBakeriesSuccess(bakeriesList),
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
}
