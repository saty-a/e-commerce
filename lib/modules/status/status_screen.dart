/// This screen is managing success and failure screen statuses.
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/buttons/oultline_button.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key, required this.isFailure}) : super(key: key);
  final bool? isFailure;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: OutlineButton(
          onPressed: () {},
          buttonText: AppStrings.backToLogin,
          textStyle: Styles.tsSb18.copyWith(color: AppColors.primary),
          borderColor: AppColors.primary,
        ).only(bottom: 20.h, left: 20.w, right: 20.w),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            isFailure == false
                ? Image.asset(Images.imgSuccessImage1,
                    height: 170.h, width: 170.w)
                : Image.asset(Images.imgWarningImage,
                    height: 170.h, width: 170.w),
            2.hb,
            Text(
              isFailure == false ? AppStrings.success : AppStrings.oopS,
              style: Styles.tsSb24.copyWith(color: AppColors.hintTextColor),
            ),
            10.hb,
            Text(
              isFailure == false
                  ? AppStrings.passwordHasBeenResetSuccessfully
                  : AppStrings.someUnknownErrorHasOccured,
              style: Styles.tsR18.copyWith(color: AppColors.grey600),
              textAlign: TextAlign.center,
            ),
          ],
        ).only(left: 20, right: 20));
  }
}
