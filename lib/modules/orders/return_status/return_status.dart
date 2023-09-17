import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/orders/bills_row_widget.dart';
import 'package:ecommerce_app/modules/orders/order_delivery_status.dart';
import 'package:ecommerce_app/modules/status/order_return_status_screen.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/point_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/app_colors.dart';

class ReturnStatus extends StatelessWidget {
  const ReturnStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppStrings.returnStatus,
                style: Styles.tsSb20.copyWith(color: AppColors.grey900))),
        bottomNavigationBar: Container(
          color: AppColors.white,
          child: CommonButton(
            buttonText: AppStrings.continueShopping,
            isDisabled: false,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const OrderReturnStatusScreen(isFailure: false)));
            },
          ).all(10.0),
        ),
        body: Container(
          color: AppColors.grey100,
          child: ListView(
            children: [
              5.hb,

              /// Product Details
              Container(
                color: AppColors.white,
                child: Container(
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 89.h,
                          width: 73.w,
                          decoration: const BoxDecoration(
                              color: AppColors.primary100,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: SizedBox(
                                height: 89.h,
                                width: 73.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.network(
                                      "https://images.unsplash.com/photo-1585060544812"
                                      "-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxz"
                                      "ZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                      fit: BoxFit.cover),
                                )),
                          ),
                        ),
                        20.wb,
                        Expanded(
                          child: SizedBox(
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Apple iPhone 14 pro(Space black 128GB)",
                                    style: Styles.tsR18
                                        .copyWith(color: AppColors.grey900),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              5.hb,

              /// Status Bar
              Container(
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h, left: 20.w),
                      child: Text(
                        "Your order is on the way",
                        style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                      ),
                    ),
                    30.hb,
                    ReturnOrderStatusIndicator(orderPicked: true, refund: true)
                        .only(left: 30.w, bottom: 33.h)
                  ],
                ),
              ),
              5.hb,
              refundSummary(
                  price: "1,29,000",
                  deductions: "2500",
                  estimatedTotalRefund: "1,29,820"),
              5.hb
            ],
          ),
        ));
  }

  /// Refund Summary
  Widget refundSummary(
      {required String price,
      required String deductions,
      required String estimatedTotalRefund}) {
    return ClipPath(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      clipper: PointsClipper(),
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Refund summary",
              style: Styles.tsb18.copyWith(color: AppColors.grey900),
            ),
            28.5.hb,
            BillsRow(
              priceText: AppStrings.price,
              price: "₹$price",
              priceStyle: Styles.tsSb16.copyWith(color: AppColors.grey900),
            ),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(
                priceText: "Deductions",
                price: "-₹$deductions",
                priceStyle: Styles.tsb16.copyWith(color: AppColors.error600)),
            8.hb,
            dividerWidget(dividerColor: AppColors.grey400),
            8.hb,
            BillsRow(
                priceText: "Estimated total refund",
                price: "₹$estimatedTotalRefund",
                priceTextStyle:
                    Styles.tsb16.copyWith(color: AppColors.grey1000),
                priceStyle: Styles.tsb16.copyWith(color: AppColors.grey1000)),
            24.hb,
          ],
        ).only(top: 20, left: 20, right: 20),
      ),
    );
  }

  /// Divider
  Widget dividerWidget({required Color dividerColor}) {
    return Divider(color: dividerColor);
  }
}
