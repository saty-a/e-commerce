import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helper/date_formatter.dart';
import '../../data/values/strings.dart';
import '../../styles/text_styles.dart';

class TransactionActivityCard extends StatelessWidget {
  final String success;
  final String amount;
  final String timestamp;
  const TransactionActivityCard(
      {Key? key,
      required this.success,
      required this.amount,
      required this.timestamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primary100),
            child: SvgPicture.asset(
              success == "true" ? Images.paymentSuccess : Images.paymentFailed,
              fit: BoxFit.cover,
            ),
          ),
          26.wb,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                success == "true"
                    ? AppStrings.cashDeposit
                    : AppStrings.cashDepositFailure,
                style: Styles.tsSb18.copyWith(color: AppColors.grey900),
              ),
              5.hb,
              Text(
                CustomDateFormatter.DDMMYYYYhhmm(DateTime.parse(timestamp)),
                style: Styles.tsR14.copyWith(
                  color: AppColors.grey900,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            success == "true"
                ? "+${AppStrings.rupeeSymbol}${amount}"
                : "${AppStrings.rupeeSymbol}${amount}",
            style: Styles.tsSb16.copyWith(
                color: success == "true"
                    ? AppColors.success700
                    : AppColors.primary),
          )
        ],
      ),
    );
  }
}
