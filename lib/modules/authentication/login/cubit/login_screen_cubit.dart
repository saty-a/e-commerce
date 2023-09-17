import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_cubit.freezed.dart';
part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(LoginScreenState());

  /// Obscure function
  obscureText(bool val) {
    emit(state.copyWith(obscureText: val));
  }

  /// email
  emailOrPhoneValue(String val) {
    emit(state.copyWith(emailOrPhone: val));
  }

  /// password
  passwordValue(String val) {
    emit(state.copyWith(password: val));
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (state.emailOrPhone.isNotEmpty && state.password.isNotEmpty) {
      emit(state.copyWith(buttonEnabled: value));
    } else {
      emit(state.copyWith(buttonEnabled: false));
    }
  }
}
