import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/authentication/sign_up/cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/app_regex/app_regex.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/app_validations/app_validations.dart';
import 'package:ecommerce_app/widgets/buttons/buttons_with_icon_row.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:ecommerce_app/widgets/dividers/customizedDivider.dart';
import 'package:ecommerce_app/modules/authentication/login/login_or_register_bottom_text.dart';
import 'package:ecommerce_app/widgets/buttons/skip_for_now_button.dart';
import 'package:ecommerce_app/widgets/textfields/text_textfield.dart';
import 'package:ecommerce_app/modules/authentication/login/textfield_heading_with%20_endText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  /// Form Keys
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  /// Text Editing Controller
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  FocusNode firstNameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();
  FocusNode mobileNumberFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 14.5, left: 20, right: 20),
          child: BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              return Form(
                key: signUpKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Signup and skip now button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.signUp,
                          style: Styles.tsSb30.copyWith(color: AppColors.black),
                        ),
                        SkipForNow(onPressed: () {})
                      ],
                    ),

                    /// Spacing
                    const SizedBox(height: 28),

                    /// Name
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextAligned(text: AppStrings.firstName),
                            const SizedBox(height: 6.5),
                            CustomTextField(
                              hintText: AppStrings.firstNameHint,
                              controller: firstNameController,
                              maxLength: 15,
                              focusNode: firstNameFocus,
                              validator: AppValidations.nameValidation,
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .firstNameValue(value);
                                if (value.isNotEmpty) {
                                  context
                                      .read<SignUpCubit>()
                                      .changeButtonStatus(true);
                                } else {
                                  context
                                      .read<SignUpCubit>()
                                      .changeButtonStatus(false);
                                }
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp("[a-zA-Z]")),
                              ],
                            )
                          ],
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextAligned(text: AppStrings.lastName),
                              const SizedBox(height: 6.5),
                              CustomTextField(
                                hintText: AppStrings.lastNameHint,
                                controller: lastNameController,
                                focusNode: lastNameFocus,
                                maxLength: 15,
                                validator: AppValidations.nameValidation,
                                onChanged: (value) {
                                  context
                                      .read<SignUpCubit>()
                                      .lastNameValue(value);
                                  if (value.isNotEmpty) {
                                    context
                                        .read<SignUpCubit>()
                                        .changeButtonStatus(true);
                                  } else {
                                    context
                                        .read<SignUpCubit>()
                                        .changeButtonStatus(false);
                                  }
                                },
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-zA-Z]")),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12.5),
                    TextAligned(text: AppStrings.mobileNumber),
                    const SizedBox(height: 3.5),

                    /// Mobile Number TextField with country code picker
                    /* CustomTextField(
                        prefixIcon: GestureDetector(
                      onTap: () {
                        */ /* showCountryPicker(
                            showPhoneCode: true,
                            context: context,
                            onSelect: (value) {
                              context
                                  .read<SignUpCubit>()
                                  .onChangedFlag(value.flagEmoji);
                            });*/ /*
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.grey200,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        margin: const EdgeInsets.only(left: 2),
                        width: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              state.onFlagSelected,
                              style: const TextStyle(fontSize: 36),
                            ),
                            SvgPicture.asset(Images.icDropDownIcon)
                          ],
                        ),
                      ),
                    )),*/

                    /// Mobile Number TextField
                    CustomTextField(
                      maxLength: 10,
                      prefixIcon: Container(
                          margin: const EdgeInsets.only(
                              left: 10, top: 0, bottom: 0),
                          height: 55.h,
                          width: 48.w,
                          child: Row(
                            children: [
                              Text(
                                "+91",
                                style:
                                    Styles.tsR16.copyWith(color: Colors.black),
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
                      focusNode: mobileNumberFocus,
                      controller: mobileNumberController,
                      validator: AppValidations.mobileValidation,
                      inputType: const TextInputType.numberWithOptions(),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
                        FilteringTextInputFormatter.deny(AppRegex.zero)
                      ],
                      hintText: AppStrings.mobileNumberHintText,
                      onChanged: (value) {
                        context.read<SignUpCubit>().mobileNumberValue(value);
                        if (value.isNotEmpty) {
                          context.read<SignUpCubit>().changeButtonStatus(true);
                        } else {
                          context.read<SignUpCubit>().changeButtonStatus(false);
                        }
                      },

                      /// Country Code Picker Handled And Managed Here
                      /*GestureDetector(
                      onTap: () {
                      showCountryPicker(
                          showPhoneCode: true,
                          context: context,
                          onSelect: (value) {
                            context
                                .read<LoginWithOtpCubit>()
                                .onFlagChanged(value.flagEmoji);
                          });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColors.grey200,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8))),
                      margin: const EdgeInsets.only(left: 2),
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(state.onFlagSelected,
                              style: const TextStyle(fontSize: 36)),
                          SvgPicture.asset(Images.icDropDownIcon)
                        ],
                      ),
                    ),
                  ),*/
                    ),
                    const SizedBox(height: 12.5),
                    TextFieldHeadingWithEndHeading(
                      startText: AppStrings.email,
                      endText: AppStrings.optional,
                      endTextStyle:
                          Styles.tsSb12.copyWith(color: AppColors.grey500),
                    ),
                    const SizedBox(height: 3.5),

                    /// Email
                    CustomTextField(
                      hintText: AppStrings.enterYourEmailHintText,
                      maxLength: 25,
                      validator: AppValidations.emailValidation,
                      focusNode: emailFocus,
                      controller: emailController,
                      onChanged: (value) {
                        context.read<SignUpCubit>().emailValue(value);
                        if (value.isNotEmpty) {
                          context.read<SignUpCubit>().changeButtonStatus(true);
                        } else {
                          context.read<SignUpCubit>().changeButtonStatus(false);
                        }
                      },
                    ),
                    const SizedBox(height: 12.5),
                    TextAligned(text: AppStrings.password),
                    const SizedBox(height: 3.5),

                    /// Password Text Field
                    CustomTextField(
                        hintText: AppStrings.createYourPasswordHintText,
                        maxLength: 25,
                        maxlines: 1,
                        focusNode: passwordFocus,
                        obscureText: state.obscureText,
                        controller: passwordController,
                        validator: AppValidations.passwordValidation,
                        onChanged: (value) {
                          context.read<SignUpCubit>().passwordValue(value);
                          if (value.isNotEmpty) {
                            context
                                .read<SignUpCubit>()
                                .changeButtonStatus(true);
                          } else {
                            context
                                .read<SignUpCubit>()
                                .changeButtonStatus(false);
                          }
                        },
                        suffixIcon: IconButton(
                            iconSize: 18,
                            onPressed: () {
                              context
                                  .read<SignUpCubit>()
                                  .obscureText(!state.obscureText);
                            },
                            icon: state.obscureText == true
                                ? SvgPicture.asset(Images.icEyeHideIcon)
                                : SvgPicture.asset(Images.icVisible))),
                    const SizedBox(height: 12.5),
                    TextAligned(text: AppStrings.confirmPassword),
                    const SizedBox(height: 3.5),

                    /// Confirm Password
                    CustomTextField(
                        hintText: AppStrings.confirmYourPasswordHintText,
                        maxLength: 25,
                        maxlines: 1,
                        focusNode: confirmPasswordFocus,
                        obscureText: state.obscureText2,
                        controller: confirmPasswordController,
                        onChanged: (value) {
                          context
                              .read<SignUpCubit>()
                              .confirmPasswordValue(value);
                          if (value.isNotEmpty) {
                            context
                                .read<SignUpCubit>()
                                .changeButtonStatus(true);
                          } else {
                            context
                                .read<SignUpCubit>()
                                .changeButtonStatus(false);
                          }
                        },
                        validator: context.read<SignUpCubit>().passwordMatch,
                        suffixIcon: IconButton(
                            iconSize: 18,
                            onPressed: () {
                              context
                                  .read<SignUpCubit>()
                                  .obscureText2(!state.obscureText2);
                            },
                            icon: state.obscureText2 == true
                                ? SvgPicture.asset(Images.icEyeHideIcon)
                                : SvgPicture.asset(Images.icVisible))),
                    const SizedBox(height: 40),

                    /// Sign up button
                    CommonButton(
                      isDisabled: state.buttonEnabled == true ? false : true,
                      buttonText: AppStrings.signUpButton,
                      textStyle: Styles.tsb18.copyWith(color: AppColors.white),
                      color: AppColors.primary,
                      borderRadius: 10.0,
                      onPressed: () {
                        if (signUpKey.currentState!.validate()) {
                          Navigator.pushNamed(context, Routes.dashboard);
                        }
                      },
                    ),
                    const SizedBox(height: 56),

                    /// Divider
                    const CustomizedDivider(),
                    const SizedBox(height: 40),

                    /// Google & Apple Button
                    SocialLoginButtonsRow(
                        firstButtonText: AppStrings.google,
                        secondButtonText: AppStrings.apple,
                        firstButtonIconUrl: Images.icGoogleIcon,
                        secondButtonIconUrl: Images.icAppleIcon),
                    const SizedBox(height: 35),

                    /// Login or Register Button
                    Center(
                      child: LoginOrRegisterBottomText(() {
                        Navigator.pushNamedAndRemoveUntil(
                                context, Routes.loginScreen, (route) => false)
                            /*Navigator.pushReplacementNamed(
                            context, Routes.loginScreen)*/
                            ;
                      },
                          questionText: AppStrings.alreadyHaveAnAccount,
                          registerOrLoginText: AppStrings.login),
                    ).only(bottom: 33.h)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}
