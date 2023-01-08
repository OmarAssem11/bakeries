import 'package:bakery/features/products/domain/usecases/get_product_details_usecase.dart';
import 'package:bakery/features/products/presentation/cubit/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._getProductDetailsUseCase)
      : super(const ProductsInitial());

  final GetProductDetailsUseCase _getProductDetailsUseCase;

  Future<void> getProductDetails(String productId) async {
    emit(const GetProductDetailsLoading());
    final result =
        await _getProductDetailsUseCase(ProductDetailsParams(productId));
    emit(
      result.fold(
        (failure) => const GetProductDetailsError(),
        (product) => GetProductDetailsSuccess(product),
      ),
    );
  }
}
