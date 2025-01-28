import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/values/strings.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpState());

  onChangedFlag(String val) {
    emit(state.copyWith(onFlagSelected: val));
  }

  onButtonEnable(bool val) {
    emit(state.copyWith(buttonEnabled: val));
  }

  firstNameValue(String val) {
    emit(state.copyWith(firstName: val));
  }

  lastNameValue(String val) {
    emit(state.copyWith(lastName: val));
  }

  emailValue(String val) {
    emit(state.copyWith(email: val));
  }

  passwordValue(String val) {
    emit(state.copyWith(password: val));
  }

  confirmPasswordValue(String val) {
    emit(state.copyWith(confirmPassword: val));
  }

  mobileNumberValue(String val) {
    emit(state.copyWith(mobileNumber: val));
  }

  obscureText(bool val) {
    emit(state.copyWith(obscureText: val));
  }

  obscureText2(bool val) {
    emit(state.copyWith(obscureText2: val));
  }

  isPasswordMatchFunc(bool val) {
    emit(state.copyWith(isPasswordMatch: val));
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (state.firstName.isNotEmpty &&
        state.lastName.isNotEmpty &&
        state.password.isNotEmpty &&
        state.confirmPassword.isNotEmpty &&
        state.email.isNotEmpty &&
        state.mobileNumber.isNotEmpty) {
      emit(state.copyWith(buttonEnabled: value));
    } else {
      emit(state.copyWith(buttonEnabled: false));
    }
  }

  /// Password Match
  String? passwordMatch(String? a) {
    if (state.password.length >= 8) {
      if (state.password != a) {
        return "Password do not match";
      }
    }
    return null;
  }
}
