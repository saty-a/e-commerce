import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/data/models/address_model.dart';
import 'package:ecommerce_app/data/values/images.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'my_address_book_state.dart';

part 'my_address_book_cubit.freezed.dart';

class MyAddressBookCubit extends Cubit<MyAddressBookState> {
  MyAddressBookCubit() : super(MyAddressBookState());

  void addAddress() {
    final List<Address> list = [];
    list.add(
      Address(
        addressType: 'Home',
        address: "Defence Colony, Delhi",
        icon: Images.icHome,
      ),
    );
    list.add(
      Address(
        addressType: 'Office',
        address: "Sector 44, Gurgaon",
        icon: Images.icOffice,
      ),
    );
    list.add(
      Address(
        addressType: 'Other',
        address: "Kanhai, Gurgaon",
        icon: Images.icLocationOutline,
      ),
    );
    emit(state.copyWith(addressList: list));
  }

  void addAddresslist(Address address) {
    final List<Address> list = [];
    list.add(address);
    list.addAll(state.addressList);
    emit(state.copyWith(addressList: list));
  }

  void removeAddress(int index){
    final List<Address> list =[];
    list.addAll(state.addressList);
    list.removeAt(index);
    emit(state.copyWith(addressList: list));
  }

}
