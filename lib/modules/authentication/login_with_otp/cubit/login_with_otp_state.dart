part of 'login_with_otp_cubit.dart';

@freezed
class LoginWithOtpState with _$LoginWithOtpState {
  factory LoginWithOtpState({
    @Default(false) bool tcCheck,
    @Default(false) bool buttonEnable,
    @Default(AppStrings.flagEmoji) String onFlagSelected,
  }) = _LoginWithOtpState;
}
