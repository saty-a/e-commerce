part of 'return_order_cubit.dart';

@freezed
class ReturnOrderState with _$ReturnOrderState {
  factory ReturnOrderState({
    @Default(-1) int groupValue,
  }) = _ReturnOrderState;
}
