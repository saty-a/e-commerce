import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class OrderStatusBar extends StatelessWidget {
  bool firstCheck;
  bool secondCheck;
  bool thirdCheck;
  OrderStatusBar(
      {Key? key,
      this.firstCheck = false,
      this.secondCheck = false,
      this.thirdCheck = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// First Container
            firstCheck
                ? Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      color: AppColors.successColor,
                    ),
                    child: Center(
                      child: Text("1",
                          style:
                              Styles.tsSb16.copyWith(color: AppColors.white)),
                    ))
                : Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.successColor),
                      color: AppColors.successColor.withOpacity(0.1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check_rounded,
                        size: 20,
                        color: AppColors.successColor,
                      ),
                    )),
            7.wb,
            SizedBox(
              height: 2.h,
              width: 80.w,
              child: const Divider(
                color: AppColors.successColor,
                thickness: 1,
              ),
            ),
            7.wb,
            secondCheck
                ? Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey600),
                        color: AppColors.grey100,
                        shape: BoxShape.circle),
                    child: Center(
                      child: Text("2",
                          style:
                              Styles.tsSb16.copyWith(color: AppColors.grey700)),
                    ))
                : Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.successColor),
                      color: AppColors.successColor.withOpacity(0.1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check_rounded,
                        size: 20,
                        color: AppColors.successColor,
                      ),
                    )),
            7.wb,
            SizedBox(
              height: 2.h,
              width: 80.w,
              child: const Divider(
                color: AppColors.successColor,
                thickness: 1,
              ),
            ),
            7.wb,
            thirdCheck
                ? Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey600),
                        color: AppColors.grey100,
                        shape: BoxShape.circle),
                    child: Center(
                      child: Text("3",
                          style:
                              Styles.tsSb16.copyWith(color: AppColors.grey700)),
                    ))
                : Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.successColor),
                      color: AppColors.successColor.withOpacity(0.1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check_rounded,
                        size: 20,
                        color: AppColors.successColor,
                      ),
                    )),
          ],
        ).only(top: 25.h),
        4.hb,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Address",
              style: Styles.tsSb12.copyWith(color: AppColors.grey900),
            ),
            Text(
              "Order Summary",
              style: Styles.tsSb12.copyWith(color: AppColors.grey900),
            ),
            Text("Payment",
                style: Styles.tsSb12.copyWith(color: AppColors.grey900))
          ],
        ).only(left: 52.w, right: 52.w, bottom: 5.h)
      ],
    );
  }
}
