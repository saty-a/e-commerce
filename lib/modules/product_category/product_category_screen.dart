import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/dividers/app_divider.dart';
import '../../widgets/textfields/custom_textfield.dart';

class ProductCategoryScreen extends StatelessWidget {
  const ProductCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Electronics',
        ),
      ),
      body: Column(
        children: [
          10.hb,
          CustomTextField(
            filledColor: AppColors.primary100,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: SvgPicture.asset(
                Images.icSearch,
              ),
            ),
            hintText: AppStrings.search,
          ).hp(16),
          6.hb,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () { Navigator.pushNamed(context, Routes.productSubcategory);},
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mobiles',
                        style: Styles.tsSb16.copyWith(color: AppColors.grey800),
                      ),
                      SvgPicture.asset(Images.icForwardArrow),
                    ],
                  ).vp(22).hp(20),
                ),
              ),
              separatorBuilder: (_, index) => const AppDivider(height: 2,),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
