import 'package:bakery/core/domain/failure/failure.dart';
import 'package:bakery/features/bakeries/domain/entities/bakery.dart';
import 'package:bakery/features/categories/domain/entities/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<Category>>> getAllCategories();

  Future<Either<Failure, List<Bakery>>> getCategoryBakeries(String categoryId);
}
