import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderLocation extends StatelessWidget {
  const OrderLocation({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;

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
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primary200,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
            child: GestureDetector(
              onTap: onPressed ?? () {},
              child: Row(
                children: [
                  Text(
                    'Change',
                    style: Styles.tsR12.copyWith(color: AppColors.primary),
                  ),
                  6.wb,
                  SvgPicture.asset(
                    Images.icForwardArrow,
                    color: AppColors.primary,
                    height: 10,
                  )
                ],
              ),
            ),
          ),
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
