part of 'product_deatils_cubit.dart';

@freezed
class ProductDeatilsState with _$ProductDeatilsState {
  factory ProductDeatilsState({
    @Default(false) bool isLoadMore,
  }) = _ProductDeatilsState;
}
