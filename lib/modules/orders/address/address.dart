import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/common_button.dart';
import '../orders_status_bar_horizontal.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      appBar: AppBar(title: const Text(AppStrings.selectAddress)),
      bottomNavigationBar: Container(
          height: 120.h,
          color: AppColors.white,
          child: CommonButton(
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.orderSummary);
                  },
                  isDisabled: false)
              .only(left: 20.h, right: 20.h, top: 35.h, bottom: 20.h)),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          5.hb,

          /// Order Status Bar
          Container(
            color: AppColors.white,
            child: OrderStatusBar(
              firstCheck: true,
              secondCheck: true,
              thirdCheck: true,
            ),
          ),
          5.hb,

          ///Add New Address
          const AddNewAddress(),
          5.hb,

          /// Order Location
          LocationChange(onPressed: () {}, isChecked: true),
          5.hb,
          LocationChange(
            onPressed: () {},
          ),
          5.hb,
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.coupon);
      },
      child: Container(
        color: AppColors.white,
        child: Row(
          children: [
            Container(
              height: 29.25.h,
              width: 29.35.w,
              decoration: BoxDecoration(
                color: AppColors.lightBlue125,
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.add,
                size: 23.35,
                color: AppColors.white,
              ),
            ),
            16.wb,
            Expanded(
              child: Text(
                "Apply Coupons",
                style: Styles.tsSb18.copyWith(color: AppColors.grey900),
              ).bp(8.h),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 23,
              color: AppColors.grey700,
            )
          ],
        ).sp(20, 12.h),
      ),
    );
  }
}

class LocationChange extends StatelessWidget {
  final VoidCallback? onPressed;
  bool isChecked;
  LocationChange({Key? key, this.onPressed, this.isChecked = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primary100),
            child: SvgPicture.asset(Images.icLocationBlue),
          ),
          16.wb,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivered to',
                  style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                ),
                6.hb,
                Text(
                  'Complete address with city, state, pin code',
                  style: Styles.tsR14.copyWith(color: AppColors.grey700),
                ),
              ],
            ),
          ),
          16.wb,
          GestureDetector(
              onTap: onPressed ?? () {},
              child: isChecked
                  ? Container(
                      height: 19.25.h,
                      width: 19.35.w,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue125,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.check_rounded,
                        size: 12.35,
                        color: AppColors.white,
                      ),
                    )
                  : Container(
                      height: 19.25.h,
                      width: 19.35.w,
                      decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: AppColors.black.withOpacity(0.2),
                              width: 1)),
                      alignment: Alignment.center,
                    )),
          /*SkipForNow(
            onPressed: onPressed ?? () {},
            text: "Change",
            textStyle: Styles.tsR12.copyWith(color: AppColors.primary),
          )*/
        ],
      ).sp(20, 12),
    );
  }
}
