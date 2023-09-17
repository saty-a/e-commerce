import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TextAligned extends StatelessWidget {
  const TextAligned({required this.text, Key? key, this.styles})
      : super(key: key);
  final String text;
  final TextStyle? styles;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styles ?? Styles.tsR16.copyWith(color: AppColors.grey900),
    );
  }
}
