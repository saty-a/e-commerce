import 'dart:ui';

import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomizedContainer extends StatelessWidget {
  const CustomizedContainer(this.iconPath, this.buttonText, this.onTap,
      {Key? key, this.borderColor, this.iconColor, this.buttonTextColor})
      : super(key: key);
  final String iconPath;
  final String buttonText;
  final VoidCallback onTap;
  final Color? borderColor;
  final Color? iconColor;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor ?? AppColors.grey700),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                color: iconColor ?? AppColors.grey600,
              ),
              5.wb,
              Text(
                buttonText,
                style: Styles.tsSb12
                    .copyWith(color: buttonTextColor ?? AppColors.grey700),
              ),
            ],
          ).only(top: 10, left: 10, right: 10, bottom: 10)),
    ).only(right: 10);
    ;
  }
}
