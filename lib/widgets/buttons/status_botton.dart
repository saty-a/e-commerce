import 'package:flutter/material.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class StatusButton extends StatelessWidget {
  const StatusButton(
      {Key? key,
      required this.buttonText,
      required this.isOrderDelivered,
      required this.onPressed,
      this.borderRadius})
      : super(key: key);

  final VoidCallback onPressed;
  final bool isOrderDelivered;
  final double? borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: isOrderDelivered == true
                ? AppColors.greenLightColor
                : AppColors.primaryLight,
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 5.0))),
        /*  color: isOrderDelivered == true
            ? AppColors.greenLightColor
            : AppColors.primaryLight,*/
        /* shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),*/
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
            isOrderDelivered == true
                ? AppStrings.delivered
                : AppStrings.orderPlaced,
            style: isOrderDelivered == true
                ? Styles.tsR14.copyWith(color: AppColors.greenColor)
                : Styles.tsR14.copyWith(color: AppColors.primary)));
  }
}
