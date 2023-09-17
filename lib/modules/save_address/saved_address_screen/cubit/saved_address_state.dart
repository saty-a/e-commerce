part of 'saved_address_cubit.dart';

@freezed
class SavedAddressState with _$SavedAddressState {
  factory SavedAddressState({
    @Default(-1) int onButtonTap,
  }) = _SavedAddressState;
}
