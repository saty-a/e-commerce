import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import 'cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.onBoardingScreen, (route) => false);
          },
          child: Stack(
            children: [
              Positioned(
                  top: 310.h,
                  left: 50.w,
                  right: 50.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 167.h,
                        width: 167.w,
                        child: SvgPicture.asset(Images.imgSplashLogo),
                      ),
                      20.hb,
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: AppStrings.happy,
                              style:
                                  Styles.tsb30.copyWith(color: AppColors.white),
                            ),
                            TextSpan(
                              text: " ${AppStrings.shop}",
                              style: Styles.tsb30
                                  .copyWith(color: AppColors.warning700),
                            ),
                          ]))
                    ],
                  )),
              Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    Images.imgSplash,
                    color: AppColors.primary100,
                    height: 530.h,
                  )),
            ],
          )),
    );
  }
}
