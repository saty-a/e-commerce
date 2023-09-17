import 'dart:core';

import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';

class BillsRow extends StatelessWidget {
  const BillsRow(
      {required this.price,
      required this.priceText,
      this.priceTextStyle,
      this.priceStyle,
      this.isDelivery = false,
      Key? key})
      : super(key: key);

  final String priceText;
  final String price;
  final TextStyle? priceTextStyle;
  final TextStyle? priceStyle;
  final bool isDelivery;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          priceText,
          style:
              priceTextStyle ?? Styles.tsR16.copyWith(color: AppColors.grey900),
        ),
        const Spacer(),
        Text(
          price,
          style: priceStyle ?? Styles.tsSb16.copyWith(color: AppColors.grey900),
        ),
        5.wb,
        Visibility(
            visible: isDelivery == true ? true : false,
            child: Text(
              "Free",
              style: Styles.tsSb14.copyWith(color: AppColors.primary),
            ))
      ],
    );
  }
}
