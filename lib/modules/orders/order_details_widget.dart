import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: const BoxDecoration(
              color: AppColors.primary100,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  fit: BoxFit.cover),
            ),
          ),
          12.wb,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apple Iphone 14 pro 128 GB',
                  style: Styles.tsSb12.copyWith(color: AppColors.grey900),
                ),
                6.hb,
                Text(
                  'Complete description of the product',
                  style: Styles.tsR12.copyWith(color: AppColors.grey600),
                ),
                6.hb,
                Text(
                  'In Stock',
                  style: Styles.tsR10.copyWith(color: AppColors.success700),
                ),
                10.hb,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '₹1,39.900',
                      style: Styles.tsR12.copyWith(
                        color: AppColors.grey700,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 1,
                      ),
                    ),
                    4.wb,
                    Text(
                      '₹1,29,900',
                      style: Styles.tsSb12.copyWith(color: AppColors.grey1000),
                    ),
                    4.wb,
                    Text(
                      '20% off',
                      style:
                          Styles.tsSb12.copyWith(color: AppColors.success700),
                    )
                  ],
                ),
                12.hb,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Delivery by Fri Dec 23 |',
                      style: Styles.tsR10.copyWith(color: AppColors.grey600),
                    ),
                    2.wb,
                    Text(
                      'Free Delivery ',
                      style: Styles.tsR10.copyWith(color: AppColors.success700),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: AppColors.primary100,
                    border: Border.all(color: AppColors.primary200),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(Images.icCrossIcon, height: 8),
              ),
              50.hb,
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary300),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '1',
                      style: Styles.tsSb10.copyWith(color: AppColors.primary),
                    ),
                    4.wb,
                    Flexible(
                      child: Text(
                        'Qty',
                        style: Styles.tsR10.copyWith(color: AppColors.black),
                      ),
                    ),
                    16.wb,
                    SvgPicture.asset(
                      Images.icDropDownIcon,
                      color: AppColors.primary,
                    )
                  ],
                ).sp(4, 6),
              )
            ],
          )
        ],
      ).sp(20, 15),
    );
  }
}
