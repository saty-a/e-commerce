part of 'save_address_cubit.dart';

@freezed
class SaveAddressState with _$SaveAddressState {
  factory SaveAddressState({
    @Default(0) int onButtonTap,
  }) = _SaveAddressState;
}
