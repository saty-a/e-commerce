import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';

class RedeemCodeSheet extends StatelessWidget {
  const RedeemCodeSheet({super.key});

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
          Image.asset(Images.imgRedeemCode, width: 248, height: 248,),
          const SizedBox(height: 24),
          Text(AppStrings.redeemCodeTitle, style: Styles.tsSb20.copyWith(
            color: AppColors.primary900,
          ),),
          const SizedBox(height: 4),
          Text(AppStrings.redeemCodeText, style: Styles.tsR14.copyWith(
            color: AppColors.grey700,
          ),),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: CustomTextField(
              hintText: AppStrings.codeInputHint,
              borderRadius: 16,
              filledColor: AppColors.textFieldBackgroundColor,
              borderColor: AppColors.textFieldBackgroundColor,
              enabledBorderColor: AppColors.textFieldBackgroundColor,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 20, 48, 48),
            child: CommonButton(
              buttonText: AppStrings.redeemButtonText,
              onPressed: () {},
              isDisabled: false,
              color: AppColors.primary,
              borderRadius: 10,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ],
      ),
    );
  }

  static void openSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const RedeemCodeSheet(),
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