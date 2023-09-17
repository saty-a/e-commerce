import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(9),
              decoration: const BoxDecoration(
                color: AppColors.grey200,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                Images.icClose,
                color: AppColors.grey900,
                height: 14,
              ),
            ),
          ),
        ).sp(12,12),
        10.hb,
        SvgPicture.asset(Images.icLogout),
        10.hb,
        Text(
          'Log out!',
          style: Styles.tsSb20.copyWith(color: AppColors.primary900),
        ),
        10.hb,
        Text(
          'Are you sure you want to logout?',
          style: Styles.tsR14.copyWith(color: AppColors.grey700),
        ),
        30.hb,
        CommonButton(
          isDisabled: false,
          buttonText: 'Don’t logout',
          onPressed: () => Navigator.pop(context),
          color: AppColors.primary200,
          textStyle: Styles.tsSb16.copyWith(color: AppColors.primaryDark),
        ).hp(36),
        20.hb,
        OutlineButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.loginWithOtpScreen, (route) => false),
          buttonText: 'Yes, Logout',
          textStyle: Styles.tsSb16.copyWith(color: AppColors.grey700),
          color: Colors.white,
          borderColor: AppColors.grey500,
        ).hp(36),
        50.hb,
      ],
    );
  }
}
