import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_deatils_cubit.freezed.dart';
part 'product_deatils_state.dart';

class ProductDeatilsCubit extends Cubit<ProductDeatilsState> {
  ProductDeatilsCubit() : super(ProductDeatilsState());

  /// On Read More Tap
  onReadMoreTap(bool val) {
    emit(state.copyWith(isLoadMore: val));
  }
}
