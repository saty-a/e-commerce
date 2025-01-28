import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../utils/clipper/point_clipper.dart';
import 'bills_row_widget.dart';

class BillsDetailsWidget extends StatelessWidget {
  const BillsDetailsWidget(
      {required this.price,
      required this.discount,
      required this.deliveryFee,
      required this.totalAmount,
      required this.gst,
      Key? key})
      : super(key: key);

  final String price;
  final String discount;
  final String deliveryFee;
  final String totalAmount;
  final String gst;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      clipper: PointsClipper(),
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.billsDetails,
              style: Styles.tsb18.copyWith(color: AppColors.grey900),
            ),
            28.5.hb,
            BillsRow(priceText: AppStrings.price, price: "₹$price"),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(
                priceText: AppStrings.discount,
                price: "-₹$discount",
                priceStyle:
                    Styles.tsb16.copyWith(color: AppColors.successColor)),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(priceText: AppStrings.gst, price: "₹$gst"),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(
                priceText: AppStrings.deliveryFee,
                price: "₹$deliveryFee",
                isDelivery: true,
                priceTextStyle: Styles.tsR16.copyWith(color: AppColors.primary),
                priceStyle: Styles.tsR16.copyWith(
                    color: AppColors.grey800,
                    decoration: TextDecoration.lineThrough)),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(
                priceText: AppStrings.totalAmount,
                price: "₹$totalAmount",
                priceTextStyle: Styles.tsb16.copyWith(color: AppColors.black),
                priceStyle: Styles.tsb16.copyWith(color: AppColors.black)),
            25.hb,
          ],
        ).all(20),
      ),
    );
  }

  /// Common Divider using in this screen
  Widget dividerWidget({required Color dividerColor}) {
    return Divider(color: dividerColor);
  }
}
