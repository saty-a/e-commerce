import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/values/images.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class OrderStatusBarVertical extends StatelessWidget {
  const OrderStatusBarVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent),
                color: AppColors.grey100,
              ),
              child: SvgPicture.asset(Images.icOrderPlaced),
            ),
            7.hb,
            SizedBox(
              height: 40.h,
              child: const VerticalDivider(
                color: AppColors.successColor,
                thickness: 1,
              ),
            ),
            7.hb,
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent),
                color: AppColors.successColor,
              ),
            ),
            7.hb,
            SizedBox(
              height: 40.h,
              child: const VerticalDivider(
                color: AppColors.grey500,
                thickness: 1,
              ),
            ),
            7.hb,
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.grey700),
                color: AppColors.grey100,
              ),
            ),
          ],
        ),
        30.wb,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order placed",
                  style: Styles.tsb20.copyWith(color: AppColors.grey900),
                ),
                SizedBox(
                  height: 40.h,
                  width: 310.w,
                  child: Text(
                    "Your order #ORD8908 Was placed for delivery",
                    style: Styles.tsR14.copyWith(
                      color: AppColors.grey900,
                    ),
                    maxLines: 2,
                  ),
                )
              ],
            ),
            14.hb,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order placed",
                  style: Styles.tsb20.copyWith(color: AppColors.grey900),
                ),
                SizedBox(
                  height: 40.h,
                  width: 310.w,
                  child: Text(
                    "Your order is on the way and will deliver on time",
                    style: Styles.tsR14.copyWith(color: AppColors.grey900),
                  ),
                )
              ],
            ),
            15.hb,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order placed",
                  style: Styles.tsb20.copyWith(color: AppColors.grey900),
                ),
                SizedBox(
                  height: 40.h,
                  width: 310.w,
                  child: Text(
                    "Product delivered to you and marked as delivered",
                    style: Styles.tsR14.copyWith(color: AppColors.grey900),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

/// Order Status Bar
class OrderStatusBarVertical2 extends StatelessWidget {
  OrderStatusBarVertical2(
      {Key? key, required this.orderPlaced, required this.orderIsOnWay})
      : super(key: key);
  bool orderPlaced = false;
  bool orderIsOnWay = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Order placed heading
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.grey100,
                      ),
                      /* child: SvgPicture.asset(Images.icOrderPlaced),*/
                    ),
                    AnimatedContainer(
                      height: orderPlaced == false ? 0.0 : 25.h,
                      width: orderPlaced == false ? 0.0 : 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.grey100,
                      ),
                      duration: const Duration(microseconds: 400),
                      child: SvgPicture.asset(Images.icOrderPlaced),
                    ),
                  ],
                ),
                20.wb,
                Text(
                  "Order placed",
                  style: Styles.tsb20.copyWith(color: AppColors.black),
                )
              ],
            ),
            7.hb,

            /// Order placed text
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 40.h,
                      child: const VerticalDivider(
                        color: AppColors.grey,
                        thickness: 1,
                      ),
                    ).only(left: 5.w),
                    AnimatedContainer(
                      height: orderIsOnWay == false ? 0.0 : 40.h,
                      duration: const Duration(seconds: 10),
                      child: const VerticalDivider(
                        color: AppColors.successColor,
                        thickness: 1,
                      ),
                    ).only(left: 5.w),
                  ],
                ),
                26.wb,
                SizedBox(
                  width: 310.w,
                  child: Text(
                    "Your order #ORD8908 Was placed for delivery",
                    style: Styles.tsR14.copyWith(color: AppColors.grey900),
                  ),
                )
              ],
            ),
            7.hb,

            /// Your Order is on the way heading.
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.transparent),
                    color: AppColors.grey100,
                  ),
                  child: SvgPicture.asset(Images.icOrderPlaced),
                ),
                20.wb,
                Text(
                  "Your order is on the way",
                  style: Styles.tsb20.copyWith(color: AppColors.black),
                )
              ],
            ),
            7.hb,

            /// Your order is on the way divider with data.
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                  child: const VerticalDivider(
                    color: AppColors.successColor,
                    thickness: 1,
                  ),
                ).only(left: 5.w),
                26.wb,
                Text(
                  "Your order is on the way and will deliver on time",
                  style: Styles.tsR14.copyWith(color: AppColors.grey900),
                )
              ],
            ),
            7.hb,

            /// Delivered heading.
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.transparent),
                    color: AppColors.grey100,
                  ),
                  child: SvgPicture.asset(Images.icOrderPlaced),
                ),
                20.wb,
                Text(
                  "Delivered",
                  style: Styles.tsb20.copyWith(color: AppColors.black),
                )
              ],
            ),
            5.hb,

            /// Delivered data.
            SizedBox(
              width: 310.w,
              child: Text("Product delivered to you and marked as delivered",
                      style: Styles.tsR14.copyWith(color: AppColors.grey900))
                  .only(left: 45.w),
            )
          ],
        ),
      ],
    );
  }
}
