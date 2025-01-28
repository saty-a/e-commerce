import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

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
