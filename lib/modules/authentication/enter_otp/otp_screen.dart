import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/authentication/enter_otp/cubit/enter_otp_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/app_regex/app_regex.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  CountdownTimerController? controller;

  /// Pin code Controller
  final TextEditingController pincodeController = TextEditingController();

  /// endTime
  int? _endTime;

  /// Count Down Timer
  CountdownTimerController? _timerController;

  /// Time Duration
  final int _timerDurationInSeconds = 60;

  /// initState
  @override
  void initState() {
    super.initState();
    _endTime = DateTime.now()
        .add(Duration(seconds: _timerDurationInSeconds))
        .millisecondsSinceEpoch;
    _timerController = CountdownTimerController(endTime: _endTime!);
    context.read<EnterOtpCubit>().shouldShowTimerFunction(true);
    _removeCountDownTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// Method used to remove countdown timer.
  void _removeCountDownTimer() {
    Future.delayed(Duration(seconds: _timerDurationInSeconds)).then((value) {
      context.read<EnterOtpCubit>().shouldShowTimerFunction(false);
    });
  }

  /// Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<EnterOtpCubit, EnterOtpState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Heading
                Text(
                  AppStrings.otpScreenText,
                  style: Styles.tsSb30.copyWith(color: AppColors.black),
                ),
                34.hb,

                /// Custom OTP Text Field
                // CommonOtpTextField(
                //   keyboardType: TextInputType.number,
                //   fieldWidth: 60,
                //   fieldHeight: 60,
                //   otpFieldStyle: OtpTextFieldStyle(
                //     focusBorderColor: AppColors.primary,
                //   ),
                //   onChanged: (value) {
                //     value.length == 4
                //         ? context.read<EnterOtpCubit>().buttonStatus(true)
                //         : context.read<EnterOtpCubit>().buttonStatus(false);
                //   },
                //   onCompleted: (code) {},
                // ),

                /// OTP Pin code field using package
                //20.hb,
                /// Pin code Text Field
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
                  ],
                  onChanged: (value) {
                    value.length == 4
                        ? context.read<EnterOtpCubit>().buttonStatus(true)
                        : context.read<EnterOtpCubit>().buttonStatus(false);
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 60,
                      fieldWidth: 60,
                      inactiveFillColor: AppColors.grey,
                      activeFillColor: AppColors.grey,
                      selectedFillColor: AppColors.grey,
                      inactiveColor: Colors.transparent,
                      activeColor: AppColors.primary,
                      selectedColor: AppColors.primary),
                  keyboardType: TextInputType.number,
                  cursorColor: AppColors.primary,
                  enableActiveFill: true,
                  animationType: AnimationType.fade,
                ),
                30.hb,

                /// Continue Button
                CommonButton(
                    buttonText: AppStrings.continueButton,
                    isDisabled: !state.buttonEnable,
                    color: AppColors.primary,
                    onPressed: () {
                      state.buttonEnable == true
                          ? Navigator.pushNamedAndRemoveUntil(
                              context, Routes.dashboard, (route) => false)
                          : null;
                    }),
                14.hb,

                /// Login or Register
                /*LoginOrRegisterBottomText(() {},
                    questionText: AppStrings.otpHasNotBeenSent,
                    registerOrLoginText: AppStrings.resendOtp),*/
                /*CountdownTimer(
                    onEnd: onEnd,
                    controller: controller,
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time != null) {
                        return Text(
                          "0${time.min != null ? time.min.toString() : "0"}:" +
                              (time.sec != null
                                  ? time.sec! > 9
                                      ? time.sec.toString()
                                      : "0" + time.sec.toString()
                                  : "00:00"),
                        );
                      } else {
                        return Text(
                          "00:00",
                        );
                      }
                    }),
                GestureDetector(
                  onTap: () {
                    if (isTimeout) {
                      setState(() {
                        controller!.endTime =
                            DateTime.now().millisecondsSinceEpoch + 1000 * 60;
                        controller!.start();
                        isTimeout = false;
                      });
                    }
                  },
                  child: Text(
                    "Resend",
                  ),
                ),*/
                customized(
                  questionText: AppStrings.otpHasNotBeenSent,
                  /* registerOrLoginText: state.resendOtp == false
                        ? AppStrings.resendOtp
                        : "Retry in 00:51",*/
                  onTap: () {
                    context.read<EnterOtpCubit>().onResendOtp(true);
                  },
                  registerOrLoginText: '',
                )
              ],
            );
          },
        ).only(top: 40, left: 20, right: 20),
      ),
    );
  }

  /// Customized
  Widget customized(
      {required String questionText,
      required String registerOrLoginText,
      required VoidCallback onTap}) {
    return BlocBuilder<EnterOtpCubit, EnterOtpState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /* Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Visibility(
                visible: state.shouldShowTimer,
                child: const SizedBox(
                  height: 12,
                  width: 12,
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                    backgroundColor: Colors.grey,
                    strokeWidth: 2,
                  ),
                ),
              ),
            ),*/
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Visibility(
                      visible: state.shouldShowTimer,
                      child: Container(),
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.otpHasNotBeenSent,
                    style:
                        Styles.tsR16.copyWith(color: AppColors.hintTextColor),
                    recognizer: TapGestureRecognizer()..onTap = onTap,
                  ),
                  if (state.shouldShowTimer)
                    WidgetSpan(
                      child: CountdownTimer(
                        controller: _timerController,
                        widgetBuilder: (_, CurrentRemainingTime? time) {
                          if (time != null) {
                            return Text(
                              " Retry in 0${time.min != null ? time.min.toString() : "0"}:${time.sec != null ? time.sec! > 9 ? time.sec.toString() : "0${time.sec}" : "00:00"}",
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.primary),
                            );
                          } else {
                            return Text(
                              " Retry in 00:00",
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.primary),
                            );
                          }
                        },
                      ),
                    )
                  else
                    TextSpan(
                      text: " ${AppStrings.resendOtp}",
                      style: Styles.tsSb16.copyWith(color: AppColors.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _handleTimer();
                        },
                    )
                ],
              ),
            ),
          ],
        );
        /*return Row(
          children: [
            Visibility(
              visible: state.shouldShowTimer,
              child: const SizedBox(
                  height: 12,
                  width: 12,
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                    backgroundColor: Colors.grey,
                    strokeWidth: 2,
                  )),
            ),
            Visibility(
              visible: state.shouldShowTimer,
              child: 6.5.wb,
            ),
            Text(
              AppStrings.otpHasNotBeenSent,
              style: Styles.tsR16.copyWith(color: AppColors.hintTextColor),
            ),
            */ /* state.resendOtp == true ? CountdownTimer(
                    controller: controller,
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time != null) {
                        return Text(
                          "Retry in 0${time.min != null ? time.min.toString() : "0"}:${time.sec != null ? time.sec! > 9 ? time.sec.toString() : "0" + time.sec.toString() : "00:00"}",
                          style: Styles.tsSb16.copyWith(color: AppColors.primary),
                        );
                      } else {
                        context.read<EnterOtpCubit>().onResendOtp(false);
                        return Container();
                      }
                    })
                : GestureDetector(
                    onTap: () {
                      context.read<EnterOtpCubit>().onResendOtp(true);
                    },
                    child: Text(
                      AppStrings.resendOtp,
                      style: Styles.tsSb16.copyWith(color: AppColors.primary),
                    ),
                  )*/ /*
            state.shouldShowTimer
                ? CountdownTimer(
                    controller: _timerController,
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time != null) {
                        return Text(
                          " Retry in 0${time.min != null ? time.min.toString() : "0"}:${time.sec != null ? time.sec! > 9 ? time.sec.toString() : "0${time.sec}" : "00:00"}",
                          style:
                              Styles.tsSb16.copyWith(color: AppColors.primary),
                        );
                      } else {
                        return Text(
                          "00:00",
                          style:
                              Styles.tsSb16.copyWith(color: AppColors.primary),
                        );
                      }
                    },
                  )
                : GestureDetector(
                    onTap: () {
                      _handleTimer();
                    },
                    child: Text(
                      AppStrings.resendOtp,
                      style: Styles.tsSb16.copyWith(color: AppColors.primary),
                    ),
                  )
          ],
        );*/
      },
    );
  }

  void _handleTimer() {
    _endTime = DateTime.now()
        .add(Duration(seconds: _timerDurationInSeconds))
        .millisecondsSinceEpoch;
    _timerController = CountdownTimerController(endTime: _endTime!);
    context.read<EnterOtpCubit>().shouldShowTimerFunction(true);
    _removeCountDownTimer();
  }
}
