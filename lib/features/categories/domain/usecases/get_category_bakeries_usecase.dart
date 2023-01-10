import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/core/domain/params/app_params.dart';
import 'package:bakery/core/domain/usecases/usecase.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/categories/domain/repository/categories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCategoryBakeriesUseCase
    implements UseCase<List<Bakery>, CategoryBakeriesParams> {
  final CategoriesRepository _categoriesRepository;

  const GetCategoryBakeriesUseCase(this._categoriesRepository);

  @override
  Future<Either<Failure, List<Bakery>>> call(
    CategoryBakeriesParams categoryBakeriesParams,
  ) =>
      _categoriesRepository
          .getCategoryBakeries(categoryBakeriesParams.categoryId);
}

class CategoryBakeriesParams extends AppParams {
  final String categoryId;

  CategoryBakeriesParams({required this.categoryId});

  @override
  List<Object?> get props => [categoryId];
}
