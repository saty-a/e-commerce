import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';

class TermsAndPoliciesScreen extends StatelessWidget {
  const TermsAndPoliciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.termsAndPolicies),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            10.hb,
            listRow(title: AppStrings.termsOfUse, onTap: (){},),
            listRow(title: AppStrings.privacyPolicyInCaps, onTap: (){},),
            listRow(title: AppStrings.license, onTap: (){},),
            listRow(title: AppStrings.returnPolicy, onTap: (){},),
            listRow(title: AppStrings.refundPolicy, onTap: (){},),
          ],
        ),
      ),
    );
  }

  Widget listRow({required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Styles.tsSb18.copyWith(color: AppColors.grey900),),
            const Icon(Icons.arrow_forward_ios, color: AppColors.grey700, size: 18,)
          ],
        ),
      ),
    );
  }
}
