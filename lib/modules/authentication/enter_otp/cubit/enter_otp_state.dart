part of 'enter_otp_cubit.dart';

@freezed
class EnterOtpState with _$EnterOtpState {
  factory EnterOtpState({
    @Default(false) bool buttonEnable,
    @Default(false) bool resendOtp,
    @Default(true) bool shouldShowTimer,
  }) = _EnterOtpState;
}
