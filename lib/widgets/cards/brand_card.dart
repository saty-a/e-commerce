import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 4.4,
                color: AppColors.black.withOpacity(0.1)),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary100,
              borderRadius: BorderRadius.circular(4),
            ),
          )),
          const SizedBox(height: 4),
          Text(
            "Redmi smart TV",
            style: Styles.tsR10.copyWith(
              color: AppColors.grey700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Upto 40% off",
            style: Styles.tsR12.copyWith(
              color: AppColors.grey1000,
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
