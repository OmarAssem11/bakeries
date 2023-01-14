import 'package:bakery/core/domain/params/no_params.dart';
import 'package:bakery/features/cart/domain/entities/cart_order/cart_order.dart';
import 'package:bakery/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:bakery/features/cart/domain/usecases/delete_from_cart_usecase.dart';
import 'package:bakery/features/cart/domain/usecases/edit_cart_usecase.dart';
import 'package:bakery/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:bakery/features/cart/presentation/cubit/cart_state.dart';
import 'package:bakery/features/products/domain/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  CartCubit(
    this._addToCartUseCase,
    this._editCartUseCase,
    this._getCartUseCase,
    this._deleteFromCartUseCase,
  ) : super(const CartInitial());

  final AddToCartUseCase _addToCartUseCase;
  final EditCartUseCase _editCartUseCase;
  final GetCartUseCase _getCartUseCase;
  final DeleteFromCartUseCase _deleteFromCartUseCase;

  List<Product> cartProducts = [];

  Future<void> addToCart(CartOrder cartOrder) async {
    emit(const AddToCartLoading());
    final result = await _addToCartUseCase(AddToCartParams(cartOrder));
    emit(
      result.fold(
        (failure) => const AddToCartError(),
        (_) => const AddToCartSuccess(),
      ),
    );
  }

  Future<void> getCart() async {
    emit(const GetCartLoading());
    final result = await _getCartUseCase(const NoParams());
    emit(
      result.fold(
        (failure) => const GetCartError(),
        (cart) {
          cartProducts = [];
          cartProducts.addAll(cart.products);
          return const GetCartSuccess();
        },
      ),
    );
  }

  Future<void> editCart(CartOrder cartOrder) async {
    final index = cartProducts.indexWhere(
      (product) => product.id == cartOrder.productId,
    );
    final cartProductAfterEdit = cartProducts
        .singleWhere(
          (product) => product.id == cartOrder.productId,
        )
        .copyWith(quantity: cartOrder.quantity);
    cartProducts[index] = cartProductAfterEdit;
    emit(const EditCartLoading());
    final result = await _editCartUseCase(EditCartParams(cartOrder));
    emit(
      result.fold(
        (failure) => const EditCartError(),
        (_) => const EditCartSuccess(),
      ),
    );
  }

  Future<void> deleteFromCart(String productId) async {
    cartProducts.removeWhere(
      (product) => product.id == productId,
    );
    emit(const DeleteCartLoading());
    final result =
        await _deleteFromCartUseCase(DeleteFromCartParams(productId));
    emit(
      result.fold(
        (failure) => const DeleteCartError(),
        (_) => const DeleteCartSuccess(),
      ),
    );
  }
}
