import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/wishlist_product.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  void addProduct(Product product) {
    List<Product> list = [];
    list.addAll(state.cartList);
    list.add(product);
    emit(state.copyWith(cartList: list));
  }

  void clearCartList() {
    emit(state.copyWith(cartList: []));
  }
}
