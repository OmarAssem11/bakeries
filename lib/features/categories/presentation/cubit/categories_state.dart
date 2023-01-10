import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = CategoriesInitial;

  const factory CategoriesState.getAllCategoriesSuccess(
    List<Category> categories,
  ) = GetAllCategoriesSuccess;
  const factory CategoriesState.getAllCategoriesError() = GetAllCategoriesError;
  const factory CategoriesState.getAllCategoriesLoading() =
      GetAllCategoriesLoading;

  const factory CategoriesState.getCategoryBakeriesSuccess(
    List<Bakery> bakeries,
  ) = GetCategoryBakeriesSuccess;
  const factory CategoriesState.getCategoryBakeriesError() =
      GetCategoryBakeriesError;
  const factory CategoriesState.getCategoryBakeriesLoading() =
      GetCategoryBakeriesLoading;
}
