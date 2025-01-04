import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../utils/app_regex/app_regex.dart';
import '../../../widgets/buttons/buttons_with_icon_row.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/dividers/customizedDivider.dart';
import '../../../widgets/textfields/custom_textfield.dart';
import '../login/textfield_heading_with _endText.dart';
import 'cubit/login_with_otp_cubit.dart';

class LoginWithOtpScreen extends StatefulWidget {
  const LoginWithOtpScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithOtpScreen> createState() => _LoginWithOtpScreenState();
}

class _LoginWithOtpScreenState extends State<LoginWithOtpScreen> {
  /// Controllers
  TextEditingController mobileNumberController = TextEditingController();

  /// Form Keys
  GlobalKey<FormState> loginWithOtpScreenKey = GlobalKey<FormState>();

  /// Variables
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// Wrapping inside BlocBuilder to listen changes in state
        /// and update accordingly.
        body: SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: BlocBuilder<LoginWithOtpCubit, LoginWithOtpState>(
        builder: (context, state) {
          return SafeArea(
            child: Form(
              key: loginWithOtpScreenKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Heading
                  Text(
                    AppStrings.loginWithOtpScreen,
                    style: Styles.tsSb30.copyWith(color: AppColors.black),
                  ),
                  25.5.hb,

                  /// TextField Heading Widget
                  /* TextAligned(text: AppStrings.mobileNumber),*/
                  TextFieldHeadingWithEndHeading(
                      startText: AppStrings.mobileNumber,
                      endText: "Login with Email",
                      endTextStyle:
                          Styles.tsSb12.copyWith(color: AppColors.primary),
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.loginScreen, (route) => false);
                      }),
                  4.5.hb,

                  /// Mobile Number Text Field
                  CustomTextField(
                    maxLength: 10,
                    prefixIcon: Container(
                        margin:
                            const EdgeInsets.only(left: 10, top: 0, bottom: 0),
                        height: 55.h,
                        width: 46.w,
                        child: Row(
                          children: [
                            Text(
                              "+91",
                              style: Styles.tsR16.copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              height: 20.h,
                              child: const VerticalDivider(
                                color: AppColors.grey600,
                                thickness: 1,
                              ),
                            )
                          ],
                        )),
                    controller: mobileNumberController,
                    inputType: const TextInputType.numberWithOptions(),
                    onChanged: (controller) {
                      /// Here Enable and Disable Send OTP Button handled
                      controller.isEmpty || controller.length < 10
                          ? context
                              .read<LoginWithOtpCubit>()
                              .buttonStatus(false)
                          : context
                              .read<LoginWithOtpCubit>()
                              .buttonStatus(true);
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
                      FilteringTextInputFormatter.deny(AppRegex.zero)
                    ],
                    hintText: AppStrings.mobileNumberHintText,
                  ),
                  30.hb,

                  /// Send OTP Button
                  CommonButton(
                    buttonText: AppStrings.sendOtpButton,
                    onPressed: () {
                      if (state.buttonEnable == true) {
                        Navigator.pushReplacementNamed(
                            context, Routes.otpScreen);
                      }
                    },
                    textStyle: Styles.tsb18.copyWith(color: AppColors.white),
                    isDisabled: !state.buttonEnable,
                    color: AppColors.primary,
                    borderRadius: 10.0,
                  ),
                  44.hb,

                  /// Divider
                  const CustomizedDivider(),
                  44.hb,
                  SocialLoginButtonsRow(
                      firstButtonText: AppStrings.whatsapp,
                      isSvg: false,
                      onFirstButtonPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.dashboard, (route) => false);
                      },
                      secondButtonText: AppStrings.google,
                      firstButtonIconUrl: Images.icWhatsappIconPng,
                      secondButtonIconUrl: Images.icGoogleIcon),
                  42.hb,

                  /// CheckBox For Accepting Terms and Condition.
                  /*Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Checkbox(
                            value: state.tcCheck,
                            onChanged: (value) {
                              context
                                  .read<LoginWithOtpCubit>()
                                  .onCheckBoxChecked(value!);
                            }),
                      ),
                      9.65.wb,
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(children: [
                            TextSpan(
                                text: AppStrings.byClicking,
                                style: Styles.tsR14
                                    .copyWith(color: AppColors.black)),
                            TextSpan(
                                text: " ${AppStrings.termsOfService}",
                                style: Styles.tsSb14
                                    .copyWith(color: AppColors.black)),
                            TextSpan(
                                text: " ${AppStrings.and}",
                                style: Styles.tsR14
                                    .copyWith(color: AppColors.black)),
                            TextSpan(
                                text: " ${AppStrings.privacyPolicy}",
                                style: Styles.tsSb14
                                    .copyWith(color: AppColors.black)),
                          ]),
                        ),
                      ),
                    ],
                  )*/
                ],
              ).only(left: 20, right: 20, top: 40),
            ),
          );
        },
      ),
    ));
  }
}
