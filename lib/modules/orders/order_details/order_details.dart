import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/orders/bills_details_widget.dart';
import 'package:ecommerce_app/modules/orders/order_delivery_status.dart';
import 'package:ecommerce_app/modules/orders/order_status_widget.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/values/images.dart';

/// Order Details
class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  String remotePDFpath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.orderDetails),
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        child: buttonWithPrefixIcon(
            buttonText: 'Repeat Order',
            onPressed: () {
              Navigator.pushNamed(context, Routes.address);
            }),
      ).all(10.0),
      body: SafeArea(
        child: Container(
          color: AppColors.grey100,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              10.hb,
              Container(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: const BoxDecoration(
                                color: AppColors.primary100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Center(
                              child: Container(
                                  height: 36.h,
                                  width: 26.w,
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
                          10.wb,
                          SizedBox(
                              height: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  5.hb,
                                  Text(
                                    "Boat Headphones",
                                    style: Styles.tsSb16
                                        .copyWith(color: AppColors.black),
                                  ),
                                  Text(
                                    "Best Sound Quality",
                                    style: Styles.tsR14
                                        .copyWith(color: AppColors.grey700),
                                  )
                                ],
                              )),
                          const Spacer(),
                          Text(
                            "₹1,498",
                            style:
                                Styles.tsSb14.copyWith(color: AppColors.black),
                          ),
                          5.wb,
                          Text(
                            "₹1,800",
                            style: Styles.tsSb14.copyWith(
                              color: AppColors.grey300,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              10.hb,
              Container(
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ORDER ID : #ORD38240983",
                      style: Styles.tsSb18.copyWith(color: AppColors.grey700),
                    ),
                    Text(
                      "25/09/22 AT 08:21PM",
                      style: Styles.tsSb12.copyWith(color: AppColors.grey700),
                    )
                  ],
                ).only(top: 10, bottom: 10, right: 10, left: 10),
              ),
              10.hb,

              /// Delivered on and Delivered to details container.
              Container(
                color: AppColors.white,
                child: Column(
                  children: [
                    OrderStatusWidget(
                      text1: 'Delivered on',
                      text2: 'Arriving this monday',
                      imageUrl: Images.clockIcon,
                      style: Styles.tsSb14.copyWith(color: AppColors.primary),
                    ),
                    10.hb,

                    /// Divider Widget
                    dividerWidget(dividerColor: AppColors.grey300),
                    OrderStatusWidget(
                        text1: "Delivered to ",
                        text2: "Complete address with city, State, pin code",
                        imageUrl: Images.locationIcon,
                        style: Styles.tsR14.copyWith(color: AppColors.grey700))
                  ],
                ).only(top: 10, right: 10, left: 10, bottom: 10),
              ),
              10.hb,

              /// TODO: Stepper Widget Later
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order status",
                      style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                    ),
                    30.hb,
                    OrderDeliveryStatusIndicator(
                        orderPlaced: true, orderIsOnWay: true)
                  ],
                ).only(left: 20.w, top: 20.h, bottom: 20.h),
              ),
              10.hb,

              /// Bills Details Widget
              const BillsDetailsWidget(
                price: '1800',
                discount: '202',
                gst: '17',
                deliveryFee: '45',
                totalAmount: '1499',
              ),
              4.hb,

              /// Download Invoice Widget
              downLoadInvoice(onPressed: () {
                Navigator.pushNamed(context, Routes.pdfView);
              }),
              5.hb,

              /// Return Product
              returnProduct(onPressed: () {
                Navigator.pushNamed(context, Routes.returnOrder);
              }),
              5.hb,
            ],
          ),
        ),
      ),
    );
  }

  /// Common Divider using in this screen
  Widget dividerWidget({required Color dividerColor}) {
    return Divider(color: dividerColor);
  }

  /// Download Invoice widget
  Widget downLoadInvoice({VoidCallback? onPressed}) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onTap: onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primaryLight),
              child: Center(
                child: SizedBox(
                  height: 13,
                  width: 13,
                  child: SvgPicture.asset(
                    Images.icDownloadIcon,
                  ),
                ),
              ),
            ),
            17.wb,
            Text(
              AppStrings.downloadInvoice,
              style: Styles.tsSb18.copyWith(color: AppColors.grey800),
            ),
            const Spacer(),
            GestureDetector(child: SvgPicture.asset(Images.icForwardArrow))
          ],
        ).all(20),
      ),
    );
  }

  /// Return Product
  Widget returnProduct({VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primaryLight),
              child: Center(
                child: SizedBox(
                  height: 13,
                  width: 13,
                  child: SvgPicture.asset(
                    Images.icReturnProduct,
                  ),
                ),
              ),
            ),
            17.wb,
            Text(
              AppStrings.returnProduct,
              style: Styles.tsSb18.copyWith(color: AppColors.grey800),
            ),
            const Spacer(),
            GestureDetector(child: SvgPicture.asset(Images.icForwardArrow))
          ],
        ).all(20),
      ),
    );
  }

  /// Button with Prefix Icon
  Widget buttonWithPrefixIcon(
      {required String buttonText, required VoidCallback onPressed}) {
    return MaterialButton(
        disabledColor: AppColors.primary.withOpacity(0.2),
        color: AppColors.primary,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.symmetric(horizontal: 67, vertical: 16),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Images.icRepeatOrder,
              color: AppColors.white,
              height: 16.h,
              width: 16.w,
            ),
            18.wb,
            Text(
              buttonText,
              style: Styles.tsSb18.copyWith(color: AppColors.white),
            )
          ],
        ));
  }
}
