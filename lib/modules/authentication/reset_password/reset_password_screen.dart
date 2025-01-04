import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/app_validations/app_validations.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/textfields/custom_textfield.dart';
import '../../../widgets/textfields/text_textfield.dart';
import 'cubit/reset_password_cubit.dart';

class ResetPasswordScreen extends StatelessWidget {
  /// Form Keys
  GlobalKey<FormState> resetPasswordKey = GlobalKey<FormState>();

  ResetPasswordScreen({super.key});

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
