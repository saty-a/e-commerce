part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  factory ResetPasswordState({
    @Default(false) bool buttonEnabled,
    @Default(false) bool isPasswordMatch,
    @Default(true) bool obscureText,
    @Default(true) bool obscureText2,
    @Default("") String newPassword,
    @Default("") String confirmNewPassword,
  }) = _ResetPasswordState;
}
