import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';

class ListRow extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ListRow(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              padding: const EdgeInsets.all(7),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primary100),
              child: SvgPicture.asset(
                icon,
                color: AppColors.primary,
              ),
            ),
            26.wb,
            Text(
              title,
              style: Styles.tsSb16.copyWith(color: AppColors.grey900),
            ),
            const Spacer(),
            SvgPicture.asset(Images.icForwardArrow),
          ],
        ),
      ),
    );
  }
}
