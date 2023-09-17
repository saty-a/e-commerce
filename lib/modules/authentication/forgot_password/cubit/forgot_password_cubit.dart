import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordState());

  emailOrPhoneValue(String val) {
    emit(state.copyWith(emailOrPhone: val));
  }

  buttonEnableValue(bool val) {
    if (state.emailOrPhone.isNotEmpty) {
      emit(state.copyWith(buttonEnabled: val));
    } else {
      emit(state.copyWith(buttonEnabled: false));
    }
  }
}
