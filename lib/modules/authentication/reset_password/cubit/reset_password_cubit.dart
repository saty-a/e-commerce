import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_cubit.freezed.dart';
part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordState());

  /// New Password Screen
  newPasswordFunc(String val) {
    emit(state.copyWith(newPassword: val));
  }

  /// Confirm New Password Function
  confirmNewPasswordFunc(String val) {
    emit(state.copyWith(confirmNewPassword: val));
  }

  /// Obscure
  obscureText(bool val) {
    emit(state.copyWith(obscureText: val));
  }

  /// Obscure
  obscureText2(bool val) {
    emit(state.copyWith(obscureText2: val));
  }

  /// Password Match
  String? passwordMatch(String? a) {
    if (state.newPassword.length >= 8) {
      if (state.newPassword != a) {
        return "Both password must match";
      }
    }
    return null;
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (state.newPassword.isNotEmpty && state.confirmNewPassword.isNotEmpty) {
      emit(state.copyWith(buttonEnabled: value));
    } else {
      emit(state.copyWith(buttonEnabled: false));
    }
  }
}
