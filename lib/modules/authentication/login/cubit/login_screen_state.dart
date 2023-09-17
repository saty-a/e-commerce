part of 'login_screen_cubit.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  factory LoginScreenState({
    @Default(false) bool buttonEnabled,
    @Default("") String emailOrPhone,
    @Default("") String password,
    @Default(true) bool obscureText,
  }) = _LoginScreenState;
}
