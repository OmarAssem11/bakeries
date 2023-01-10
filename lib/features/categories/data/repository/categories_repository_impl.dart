import 'package:bakery/core/data/exceptions/app_exception.dart';
import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/failure/return_failure.dart';
import 'package:bakery/features/bakeries/data/mappers/bakery_mapper.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/categories/data/datasources/remote_datasource/categories_remote_datasource.dart';
import 'package:bakery/features/categories/data/mappers/category_mapper.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:bakery/features/categories/domain/repository/categories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource _categoriesRemoteDataSource;

  const CategoriesRepositoryImpl(this._categoriesRemoteDataSource);

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    try {
      final categoriesModels =
          await _categoriesRemoteDataSource.getAllCategories();
      final categories = categoriesModels
          .map((categoryModel) => categoryModel.fromModel)
          .toList();
      return right(categories);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }

  @override
  Future<Either<Failure, List<Bakery>>> getCategoryBakeries(
    String categoryId,
  ) async {
    try {
      final bakeriesModels =
          await _categoriesRemoteDataSource.getCategoryBakeries(categoryId);
      final bakeries =
          bakeriesModels.map((bakeryModel) => bakeryModel.fromModel).toList();
      return right(bakeries);
    } on AppException catch (appException) {
      return left(returnFailure(appException));
    }
  }
}
