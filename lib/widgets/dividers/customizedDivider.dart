import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomizedDivider extends StatelessWidget {
  const CustomizedDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 1,
              color: AppColors.dividerColor,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text("OR",
            style: Styles.tsSb14.copyWith(color: AppColors.dividerColor)),
        const SizedBox(width: 10),
        const Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 1,
              color: AppColors.dividerColor,
            ),
          ),
        ),
      ],
    );
  }
}
