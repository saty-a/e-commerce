import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class HomeSearchContainer extends StatelessWidget {
  final VoidCallback onTap;

  const HomeSearchContainer({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary100,
          border: Border.all(width: .5, color: AppColors.grey300)
        ),
        child: Row(
          children: [
            SvgPicture.asset(Images.icSearch,).sp(20,16),
            Expanded(
              child: Text(
                AppStrings.search,
                style: Styles.tsR16.copyWith(color: AppColors.grey600),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
