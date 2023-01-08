import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bakeries_state.freezed.dart';

@freezed
class BakeriesState with _$BakeriesState {
  const factory BakeriesState.initial() = BakeriesInitial;

  const factory BakeriesState.getAllBakeriesLoading() = GetAllBakeriesLoading;
  const factory BakeriesState.getAllBakeriesSuccess(
    List<Bakery> bakeriesList,
  ) = GetAllBakeriesSuccess;
  const factory BakeriesState.getAllBakeriesError() = GetAllBakeriesError;

  const factory BakeriesState.getBakeryDetailsLoading() =
      GetBakeryDetailsLoading;
  const factory BakeriesState.getBakeryDetailsSuccess(Bakery bakery) =
      GetBakeryDetailsSuccess;
  const factory BakeriesState.getBakeryDetailsError() = GetBakeryDetailsError;
}
