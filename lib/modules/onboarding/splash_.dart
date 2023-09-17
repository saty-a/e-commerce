/*
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.loginWithOtpScreen, (route) => false);
          },
          child: Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Images.imgSplashLogo,
                      height: 167.h,
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
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    Images.imgSplash,
                    color: AppColors.primary100,
                    height: 573.h,
                  )),
            ],
          )),
    );
  }
}
*/
