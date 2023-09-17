import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_address_cubit.freezed.dart';
part 'save_address_state.dart';

class SaveAddressCubit extends Cubit<SaveAddressState> {
  SaveAddressCubit() : super(SaveAddressState());

  onButtonSelected(int val) {
    emit(state.copyWith(onButtonTap: val));
  }
}
