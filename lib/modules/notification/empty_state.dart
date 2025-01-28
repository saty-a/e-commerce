import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          133.hb,
          SizedBox(
              height: 280.h,
              width: 280.w,
              child: SvgPicture.asset(Images.imgEmptyNotification)),
          20.hb,
          Text(
            AppStrings.noNotifications,
            style: Styles.tsSb20.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          Text(
            AppStrings.noNotificationsText,
            style: Styles.tsR14.copyWith(color: AppColors.grey700),
            textAlign: TextAlign.center,
          ),
          226.hb,
        ],
      ),
    );
  }
}
