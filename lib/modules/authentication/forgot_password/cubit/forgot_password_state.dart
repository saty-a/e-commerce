part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  factory ForgotPasswordState({
    @Default(false) bool buttonEnabled,
    @Default("") String emailOrPhone,
  }) = _ForgotPasswordState;
}
