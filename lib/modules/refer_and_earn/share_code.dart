import 'package:dotted_border/dotted_border.dart';
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShareCodeSheet extends StatelessWidget {
  const ShareCodeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -36),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                height: 28,
                width: 28,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.grey1000,
                ),
                child: const Icon(Icons.close_rounded, color: Colors.white, size: 16,),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(Images.imgShareCode, width: 248, height: 248,),
          const SizedBox(height: 24),
          Text(AppStrings.shareCodeTitle, style: Styles.tsSb20.copyWith(
            color: AppColors.primary900,
          ),),
          const SizedBox(height: 4),
          Text(AppStrings.shareCodeText, style: Styles.tsR14.copyWith(
            color: AppColors.grey700,
          ),),
          const SizedBox(height: 24),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(AppStrings.referralCodeLabel, style: Styles.tsR16.copyWith(
                color: AppColors.grey900,
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 8, 48, 48),
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(const ClipboardData(text: "WA2378"));
              },
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                color: AppColors.primary,
                padding: EdgeInsets.zero,
                borderPadding: EdgeInsets.zero,
                dashPattern: const [3],
                strokeWidth: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: AppColors.primary100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("WA2378", style: Styles.tsSb20.copyWith(color: AppColors.grey900),),
                        Text(AppStrings.copyActionText, style: Styles.tsR20.copyWith(color: AppColors.grey600),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void openSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ShareCodeSheet(),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}