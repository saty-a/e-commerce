part of 'my_address_book_cubit.dart';

@freezed
class MyAddressBookState with _$MyAddressBookState {
  factory MyAddressBookState({
    @Default([]) List<Address> addressList,
  }) = _MyAddressBookState;
}