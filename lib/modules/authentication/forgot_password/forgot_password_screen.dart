import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/textfields/custom_textfield.dart';
import '../../../widgets/textfields/text_textfield.dart';
import 'cubit/forgot_password_cubit.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  /// TextEditing Controller
  final TextEditingController emailOrPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            AppStrings.forgotPasswordHeading,
            style: Styles.tsSb20.copyWith(color: AppColors.grey900),
          )),
      body: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.forgotPasswordScreenText),
              SizedBox(height: 35.h),
              TextAligned(text: AppStrings.emailOrPhone),
              const SizedBox(height: 4.5),
              CustomTextField(
                hintText: AppStrings.enterYourEmailHintText,
                controller: emailOrPhoneController,
                onChanged: (value) {
                  context.read<ForgotPasswordCubit>().emailOrPhoneValue(value);
                  if (value.isNotEmpty) {
                    context.read<ForgotPasswordCubit>().buttonEnableValue(true);
                  } else {
                    context
                        .read<ForgotPasswordCubit>()
                        .buttonEnableValue(false);
                  }
                },
              ),
              30.hb,
              CommonButton(
                  isDisabled: state.buttonEnabled == true ? false : true,
                  buttonText: AppStrings.sendLink,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.resetScreen);
                  })
            ],
          );
        },
      ).only(top: 4.h, left: 20.w, right: 20.w),
    );
  }
}
