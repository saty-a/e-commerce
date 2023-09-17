/// This screen is managing success and failure order return statuses.
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderReturnStatusScreen extends StatelessWidget {
  const OrderReturnStatusScreen({Key? key, required this.isFailure})
      : super(key: key);
  final bool? isFailure;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: OutlineButton(
          onPressed: () {
            Navigator.popUntil(
                context, (route) => route.settings.name == Routes.orderList);
            //Navigator.pushReplacementNamed(context, Routes.orderList);
          },
          buttonText: "Back to Orders",
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
                ? SvgPicture.asset(Images.icOrderReturnSuccess,
                    height: 280.h, width: 280.w)
                : Image.asset(Images.imgWarningImage,
                    height: 170.h, width: 170.w),
            10.hb,
            Text(
              isFailure == false
                  ? "Return request applied!"
                  : "Request failed!",
              style: Styles.tsSb24.copyWith(color: AppColors.hintTextColor),
            ),
            10.hb,
            Text(
              isFailure == false
                  ? "Your order return request is applied\nsuccessfully !"
                  : "Your order return request is declined!",
              style: Styles.tsR18.copyWith(color: AppColors.grey600),
              textAlign: TextAlign.center,
            ),
            Visibility(
              visible: isFailure == false ? true : false,
              child: Text(
                "Please check the order status for details",
                style: Styles.tsR18.copyWith(color: AppColors.grey600),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ).only(left: 20, right: 20));
  }
}
