part of 'wishlist_cubit.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState(
      {@Default([]) List<Product> wishlistProductList,
      @Default(false) bool loading}) = _WishlistState;

  factory WishlistState.initial() =>
       WishlistState(wishlistProductList: [], loading: true);
}
