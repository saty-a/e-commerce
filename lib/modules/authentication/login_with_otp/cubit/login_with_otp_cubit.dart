import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/values/strings.dart';

part 'login_with_otp_cubit.freezed.dart';
part 'login_with_otp_state.dart';

class LoginWithOtpCubit extends Cubit<LoginWithOtpState> {
  LoginWithOtpCubit() : super(LoginWithOtpState());

  /// onCheckBoxChecked
  onCheckBoxChecked(bool val) {
    emit(state.copyWith(tcCheck: val));
  }

  buttonStatus(bool val) {
    emit(state.copyWith(buttonEnable: val));
  }

  /// OnFlagChanged
  onFlagChanged(String val) {
    emit(state.copyWith(onFlagSelected: val));
  }
}
