import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/home/cubit/home_cubit.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/dividers/app_divider.dart';
import 'package:ecommerce_app/widgets/cards/product_card.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/bottom_sheet/bottom_sheet.dart';
import 'sort/sort_screen.dart';

class ProductSubcategoriesScreen extends StatelessWidget {
  const ProductSubcategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobiles',
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
          30.hb,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '138 Results in Mobiles',
                style: Styles.tsSb20.copyWith(color: AppColors.grey900),
              ),
              GestureDetector(
                onTap: () {
                  showBottomSheetCustomized(context, const Sort());
                },
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SvgPicture.asset(Images.icSort),
                      10.wb,
                      Text(
                        'Sort',
                        style: Styles.tsSb16.copyWith(color: AppColors.grey700),
                      )
                    ],
                  ),
                ),
              )
            ],
          ).hp(20),
          16.hb,
          const AppDivider(height: 1),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return GridView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 198 / 322,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (_, index) =>  ProductCard(product: state.productList[index],),
                  itemCount: state.productList.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
