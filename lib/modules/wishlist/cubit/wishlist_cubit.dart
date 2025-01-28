import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/wishlist_product.dart';


part 'wishlist_state.dart';
part 'wishlist_cubit.freezed.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit() : super(WishlistState.initial());


  void addWishlistProduct(Product product) {
    final List<Product> list =[];
    list.addAll(state.wishlistProductList);

    if(product.favourite == true) {
      list.add(product);
    } else {
      for(Product item in state.wishlistProductList) {
        if(product.id == item.id) {
          list.remove(product);
        }
      }
    }
    emit(state.copyWith(wishlistProductList: list));

  }

  void onClearAllTap() {
    emit(state.copyWith(wishlistProductList: []));
  }

  void onClearTap(int index) {
    final List<Product> list =[];
    list.addAll(state.wishlistProductList);
    list.removeAt(index);
    emit(state.copyWith(wishlistProductList: list));
  }


}