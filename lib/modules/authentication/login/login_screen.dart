import 'package:ecommerce/modules/authentication/login/textfield_heading_with%20_endText.dart';
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/app_validations/app_validations.dart';
import '../../../widgets/buttons/buttons_with_icon_row.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/buttons/skip_for_now_button.dart';
import '../../../widgets/dividers/customizedDivider.dart';
import '../../../widgets/textfields/custom_textfield.dart';
import 'cubit/login_screen_cubit.dart';
import 'login_or_register_bottom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// Form Keys
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: BlocBuilder<LoginScreenCubit, LoginScreenState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.login,
                            style: Styles.tsSb30
                                .copyWith(color: AppColors.grey900),
                          ),
                          SkipForNow(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  Routes.dashboard, (route) => false);
                            },
                          )
                        ],
                      ),
                      26.hb,
                      TextFieldHeadingWithEndHeading(
                        startText: AppStrings.emailOrPhone,
                        endText: AppStrings.loginWithOtp,
                        endTextStyle:
                            Styles.tsSb12.copyWith(color: AppColors.primary),
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.loginWithOtpScreen);
                        },
                      ),
                      const SizedBox(height: 4.5),

                      /// Email or Phone
                      CustomTextField(
                        controller: emailController,
                        hintText: AppStrings.enterEmailLabelText,
                        validator: AppValidations.nameValidation,
                        onChanged: (value) {
                          context
                              .read<LoginScreenCubit>()
                              .emailOrPhoneValue(value);
                          if (value.isNotEmpty) {
                            context
                                .read<LoginScreenCubit>()
                                .changeButtonStatus(true);
                          } else {
                            context
                                .read<LoginScreenCubit>()
                                .changeButtonStatus(false);
                          }
                        },
                      ),
                      const SizedBox(height: 22.5),
                      TextFieldHeadingWithEndHeading(
                          startText: AppStrings.password,
                          endText: AppStrings.forgotPassword,
                          endTextStyle:
                              Styles.tsSb12.copyWith(color: AppColors.primary),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.forgotScreen);
                          }),
                      const SizedBox(height: 4.5),

                      /// Password Validation
                      CustomTextField(
                        controller: passwordController,
                        hintText: AppStrings.enterPassword,
                        validator: AppValidations.passwordValidation,
                        obscureText: state.obscureText,
                        maxlines: 1,
                        suffixIcon: IconButton(
                          iconSize: 18,
                          onPressed: () {
                            context
                                .read<LoginScreenCubit>()
                                .obscureText(!state.obscureText);
                          },
                          icon: state.obscureText == true
                              ? SvgPicture.asset(Images.icEyeHideIcon)
                              : SvgPicture.asset(Images.icVisible),
                        ),
                        onChanged: (value) {
                          context.read<LoginScreenCubit>().passwordValue(value);
                          if (value.isNotEmpty) {
                            context
                                .read<LoginScreenCubit>()
                                .changeButtonStatus(true);
                          } else {
                            context
                                .read<LoginScreenCubit>()
                                .changeButtonStatus(false);
                          }
                        },
                      ),
                      50.hb,
                      CommonButton(
                          buttonText: AppStrings.loginButton,
                          isDisabled:
                              state.buttonEnabled == false ? true : false,
                          textStyle:
                              Styles.tsb18.copyWith(color: AppColors.white),
                          color: AppColors.primary,
                          borderRadius: 10.0,
                          onPressed: () {
                            if (loginFormKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, Routes.dashboard, (route) => false);
                            }
                          }),
                      20.hb,
                      const CustomizedDivider(),
                      20.hb,
                      SocialLoginButtonsRow(
                          firstButtonText: AppStrings.google,
                          secondButtonText: AppStrings.apple,
                          firstButtonIconUrl: Images.icGoogleIcon,
                          secondButtonIconUrl: Images.icAppleIcon),
                      //const Spacer(),
                      230.hb,
                      Center(
                        child: LoginOrRegisterBottomText(() {
                          Navigator.pushNamed(context, Routes.signUpScreen);
                        },
                            questionText: AppStrings.dontHaveAnAccount,
                            registerOrLoginText: AppStrings.register),
                      ),
                      50.hb,
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
