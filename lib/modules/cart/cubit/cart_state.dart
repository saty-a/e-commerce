part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default([]) List<Product> cartList,
  }) = _CartState;

  factory CartState.initial() => CartState(cartList: []);
}
