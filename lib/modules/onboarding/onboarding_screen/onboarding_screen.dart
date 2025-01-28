import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/common_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(
            //   width: double.infinity,
            // ),
            // const SizedBox(height: 118),
            SvgPicture.asset(Images.imgLoginScreenLogo, fit: BoxFit.contain),
            const SizedBox(
              height: 40,
            ),
            Text(
              AppStrings.yourOnlineShopForAllNeeds,
              style: Styles.tsSb30.copyWith(color: AppColors.grey1000),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetuer\n adipiscing elit, sed diam nonummy ni tincidunt ut",
              style: Styles.tsR16.copyWith(color: AppColors.grey800),
              textAlign: TextAlign.center,
            ),
            //const Spacer(),
            // CommonButton(
            //   isDisabled: false,
            //   buttonText: "Get Started",
            //   textStyle: Styles.tsSb18.copyWith(color: AppColors.white),
            //   onPressed: () {
            //     Navigator.pushNamed(context, Routes.selectLocation);
            //   },
            //   color: AppColors.primary,
            //   borderRadius: 10,
            // ),
            // 30.hb,
          ],
        ).hp(20),
      ),
      bottomNavigationBar: CommonButton(
        isDisabled: false,
        buttonText: "Get Started",
        textStyle: Styles.tsSb18.copyWith(color: AppColors.white),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.loginScreen, (route) => false);
        },
        color: AppColors.primary,
        borderRadius: 10,
      ).only(left: 20, right: 20, bottom: 20),
    );
  }
}
