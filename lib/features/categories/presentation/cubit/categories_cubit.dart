import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/categories/domain/usecases/get_all_categories_usecase.dart';
import 'package:bakery/features/categories/domain/usecases/get_category_bakeries_usecase.dart';
import 'package:bakery/features/categories/presentation/cubit/categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(
    this._getAllCategoriesUseCase,
    this._getCategoryBakeriesUseCase,
  ) : super(const CategoriesInitial());

  final GetAllCategoriesUseCase _getAllCategoriesUseCase;
  final GetCategoryBakeriesUseCase _getCategoryBakeriesUseCase;

  Future<void> getAllCategories() async {
    emit(const GetAllCategoriesLoading());
    final result = await _getAllCategoriesUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetAllCategoriesError(),
        (categories) => GetAllCategoriesSuccess(categories),
      ),
    );
  }

  Future<void> getCategoryBakeries(String categoryId) async {
    emit(const GetCategoryBakeriesLoading());
    final result = await _getCategoryBakeriesUseCase(
      CategoryBakeriesParams(categoryId: categoryId),
    );
    emit(
      result.fold(
        (failure) => const GetCategoryBakeriesError(),
        (bakeries) => GetCategoryBakeriesSuccess(bakeries),
      ),
    );
  }
}
