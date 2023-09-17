/// This screeen is not using any more
/*
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: OutlineButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.loginScreen);
          },
          buttonText: AppStrings.backToLogin,
          textStyle: Styles.tsSb18.copyWith(color: AppColors.primary),
          borderColor: AppColors.primary,
        ).only(bottom: 20, left: 20, right: 20),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Image.asset(Images.imgSuccessImage1, height: 170, width: 170),
            2.hb,
            Text(
              AppStrings.success,
              style: Styles.tsSb24.copyWith(color: AppColors.hintTextColor),
            ),
            10.hb,
            Text(
              AppStrings.passwordHasBeenResetSuccessfully,
              style: Styles.tsR18.copyWith(color: AppColors.grey600),
              textAlign: TextAlign.center,
            ),
          ],
        ).only(left: 20, right: 20));
  }
}
*/
