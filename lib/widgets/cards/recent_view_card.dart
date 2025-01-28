import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class RecentViewCard extends StatelessWidget {
  const RecentViewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
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
        ],
      ),
    );
  }
}
