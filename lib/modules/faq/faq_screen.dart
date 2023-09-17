import 'package:ecommerce_app/data/values/constants.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.faqTitle, style: Styles.tsSb18,),
        elevation: 0,
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: Colors.white,
            child: const CustomTextField(
              prefixIcon: Icon(Icons.search, color: AppColors.grey700,),
              hintText: AppStrings.faqSearchHint,
              filledColor: AppColors.primary100,
              borderColor: AppColors.grey300,
              borderRadius: 10,
              contentPadding: EdgeInsets.symmetric(vertical: 14),
            ),
          ),
          Container(
            height: 4,
            color: AppColors.grey100,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(AppStrings.commonFaqTitle,
                  style: Styles.tsSb16.copyWith(color: AppColors.grey600),
                ),
                10.hb,
                ...Dummies.dummyFAQs.map((e) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        child: Text(e, style: Styles.tsSb18,),
                      ),
                    ),
                ),
                10.hb,
                GestureDetector(
                  child: Text(AppStrings.viewMoreButtonText,
                    style: Styles.tsSb18.copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 4,
            color: AppColors.grey100,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(AppStrings.faqCategoryTitle,
                  style: Styles.tsSb16.copyWith(color: AppColors.grey600),
                ),
                10.hb,
                ...Dummies.dummyFAQCategories.map((e) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        child: Text(e, style: Styles.tsSb18,),
                      ),
                    ),
                ),
                10.hb,
                GestureDetector(
                  child: Text(AppStrings.viewMoreButtonText,
                    style: Styles.tsSb18.copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 4,
            color: AppColors.grey100,
          ),
        ],
      ),
    );
  }
}