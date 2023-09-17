import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_order_cubit.freezed.dart';
part 'return_order_state.dart';

class ReturnOrderCubit extends Cubit<ReturnOrderState> {
  ReturnOrderCubit() : super(ReturnOrderState());

  /// Radio Button
  radioButtonValue(int val) {
    emit(state.copyWith(groupValue: val));
  }
}
