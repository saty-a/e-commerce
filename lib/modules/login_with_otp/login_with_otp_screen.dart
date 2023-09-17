/*
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/widgets/buttons/buttons_with_icon_row.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:ecommerce_app/widgets/customizedDivider.dart';
import 'package:ecommerce_app/widgets/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../styles/app_colors.dart';
import '../authentication/login_with_otp/cubit/login_with_otp_cubit.dart';

class LoginWithOtpScreen extends StatefulWidget {
  const LoginWithOtpScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithOtpScreen> createState() => _LoginWithOtpScreenState();
}

class _LoginWithOtpScreenState extends State<LoginWithOtpScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<LoginWithOtpCubit, LoginWithOtpState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Text(
                  AppStrings.loginWithOtpScreen,
                  style: Styles.tsSb30.copyWith(color: AppColors.black),
                ),
                const SizedBox(height: 6.5),
                TextAligned(text: AppStrings.mobileNumber),
                const SizedBox(height: 6.5),
                const CustomTextField(),
                const SizedBox(height: 30),
                CommonButton(
                  buttonText: AppStrings.sendOtpButton,
                  onPressed: () {},
                  textStyle: Styles.tsb18.copyWith(color: AppColors.white),
                  color: AppColors.primary,
                  borderRadius: 10.0,
                ),
                const SizedBox(height: 30),
                const CustomizedDivider(),
                const SizedBox(height: 44),
                ButtonWithIconRow(
                    firstButtonText: AppStrings.whatsapp,
                    secondButtonText: AppStrings.google,
                    firstButtonIconUrl: Images.icWhatsappIcon,
                    secondButtonIconUrl: Images.icGoogleIcon),
                const SizedBox(height: 42),

                /// CheckBox
                Row(
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
                    const SizedBox(width: 9.65),
                    Expanded(
                      child: RichText(
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
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
*/
