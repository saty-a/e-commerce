import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/authentication/reset_password/cubit/reset_password_cubit.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/app_validations/app_validations.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:ecommerce_app/widgets/textfields/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordScreen extends StatelessWidget {
  /// Form Keys
  GlobalKey<FormState> resetPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          AppStrings.resetPassword,
          style: Styles.tsSb20.copyWith(color: AppColors.grey900),
        ),
      ),
      body: BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
        builder: (context, state) {
          return Form(
            key: resetPasswordKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.resetPasswordScreenText,
                  style: Styles.tsR14.copyWith(color: AppColors.grey900),
                ),
                24.5.hb,
                TextAligned(text: AppStrings.newPassword),
                4.5.hb,

                /// New Password Field
                CustomTextField(
                  obscureText: state.obscureText,
                  maxlines: 1,
                  hintText: AppStrings.enterNewPassword,
                  validator: AppValidations.passwordValidation,
                  suffixIcon: IconButton(
                    iconSize: 18,
                    onPressed: () {
                      context
                          .read<ResetPasswordCubit>()
                          .obscureText(!state.obscureText);
                    },
                    icon: state.obscureText == true
                        ? SvgPicture.asset(Images.icEyeHideIcon)
                        : SvgPicture.asset(Images.icVisible),
                  ),
                  onChanged: (value) {
                    context.read<ResetPasswordCubit>().newPasswordFunc(value);
                    if (value.isNotEmpty) {
                      context
                          .read<ResetPasswordCubit>()
                          .changeButtonStatus(true);
                    } else {
                      context
                          .read<ResetPasswordCubit>()
                          .changeButtonStatus(false);
                    }
                  },
                ),
                15.hb,
                TextAligned(text: AppStrings.confirmNewPassword),
                4.5.hb,
                CustomTextField(
                  hintText: AppStrings.reEnterNewPassword,
                  maxlines: 1,
                  obscureText: state.obscureText2,
                  validator: context.read<ResetPasswordCubit>().passwordMatch,
                  suffixIcon: IconButton(
                    iconSize: 18,
                    onPressed: () {
                      context
                          .read<ResetPasswordCubit>()
                          .obscureText2(!state.obscureText2);
                    },
                    icon: state.obscureText2 == true
                        ? SvgPicture.asset(Images.icEyeHideIcon)
                        : SvgPicture.asset(Images.icVisible),
                  ),
                  onChanged: (value) {
                    context
                        .read<ResetPasswordCubit>()
                        .confirmNewPasswordFunc(value);
                    if (value.isNotEmpty) {
                      context
                          .read<ResetPasswordCubit>()
                          .changeButtonStatus(true);
                    } else {
                      context
                          .read<ResetPasswordCubit>()
                          .changeButtonStatus(false);
                    }
                  },
                ),
                60.hb,
                CommonButton(
                    isDisabled: state.buttonEnabled == true ? false : true,
                    buttonText: AppStrings.resetPassword,
                    onPressed: () {
                      if (resetPasswordKey.currentState!.validate()) {}
                    })
              ],
            ).only(top: 4, left: 20, right: 20),
          );
        },
      ),
    );
  }
}
