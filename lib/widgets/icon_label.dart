import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/app_colors.dart';

class IconLabel extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const IconLabel(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
          ),
          8.hb,
          Text(
            title,
            style: Styles.tsSb16.copyWith(color: AppColors.grey900),
          ),
        ],
      ),
    );
  }
}
