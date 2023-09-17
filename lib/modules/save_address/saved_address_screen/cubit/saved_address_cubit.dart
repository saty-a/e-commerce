import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_address_cubit.freezed.dart';
part 'saved_address_state.dart';

class SavedAddressCubit extends Cubit<SavedAddressState> {
  SavedAddressCubit() : super(SavedAddressState());

  onButtonSelected(int val) {
    emit(state.copyWith(onButtonTap: val));
  }
}
