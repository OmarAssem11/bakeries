import 'package:bakery/features/checkout/domain/entities/checkout_data.dart';
import 'package:bakery/features/checkout/domain/usecases/checkout_usecase.dart';
import 'package:bakery/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this._checkoutUseCase) : super(const CheckoutInitial());

  final CheckoutUseCase _checkoutUseCase;

  Future<void> checkout(CheckoutData checkoutData) async {
    emit(const CheckoutLoading());
    final result = await _checkoutUseCase(
      CheckoutParams(checkoutData: checkoutData),
    );
    emit(
      result.fold(
        (failure) => const CheckoutError(),
        (orderId) => CheckoutSuccess(orderId),
      ),
    );
  }
}
