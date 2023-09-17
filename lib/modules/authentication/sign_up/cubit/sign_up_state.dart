part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default(AppStrings.flagEmoji) String onFlagSelected,
    @Default(false) bool buttonEnabled,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String mobileNumber,
    @Default(true) bool obscureText,
    @Default(false) bool isPasswordMatch,
    @Default(true) bool obscureText2,
  }) = _SignUpState;
}
