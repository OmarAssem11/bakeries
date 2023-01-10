import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:bakery/features/categories/domain/repository/categories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllCategoriesUseCase implements UseCase<List<Category>, NoParams> {
  final CategoriesRepository _categoriesRepository;

  const GetAllCategoriesUseCase(this._categoriesRepository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams noParams) =>
      _categoriesRepository.getAllCategories();
}
