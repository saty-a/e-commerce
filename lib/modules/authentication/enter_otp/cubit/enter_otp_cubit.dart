import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enter_otp_cubit.freezed.dart';
part 'enter_otp_state.dart';

class EnterOtpCubit extends Cubit<EnterOtpState> {
  EnterOtpCubit() : super(EnterOtpState());

  buttonStatus(bool val) {
    emit(state.copyWith(buttonEnable: val));
  }

  onResendOtp(bool val) {
    emit(state.copyWith(resendOtp: val));
  }

  shouldShowTimerFunction(bool val) {
    emit(state.copyWith(shouldShowTimer: val));
  }
}
