import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.style,
      required this.imageUrl})
      : super(key: key);
  final String imageUrl;
  final String text1;
  final String text2;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          decoration:  BoxDecoration(
            border: Border.all(color: AppColors.primary200, width: 0.42),
              shape: BoxShape.circle, color: AppColors.primary100),
          child: SvgPicture.asset(
            imageUrl,
            // height: 15,
            // width: 15,
          ),
        ),
        15.wb,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ),
            6.hb,
            Text(text2, style: style)
          ],
        )
      ],
    );
  }
}
