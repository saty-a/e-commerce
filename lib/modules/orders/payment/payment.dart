import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../widgets/buttons/common_button_2.dart';
import '../orders_status_bar_horizontal.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      appBar: AppBar(title: const Text(AppStrings.orderSummary)),
      bottomNavigationBar: Container(
          height: 120.h,
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "₹ 176",
                    style: Styles.tsSb18.copyWith(color: AppColors.black),
                  ),
                  Text(
                    "View Bill",
                    style: Styles.tsR14.copyWith(color: AppColors.primary),
                  )
                ],
              ).only(top: 15.h),
              CommonButton2(
                  buttonText: "Place order",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.orderPlaced);
                  },
                  isDisabled: false)
            ],
          ).only(left: 20.h, right: 20.h, top: 35.h, bottom: 20.h)),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          5.hb,

          /// Order Status Bar
          Container(
            color: AppColors.white,
            child: OrderStatusBar(
              firstCheck: false,
              secondCheck: false,
              thirdCheck: true,
            ),
          ),
          5.hb,
          UPIWidget(),
          5.hb,
          WalletWidget(),
          5.hb,
          Container(
              color: AppColors.white,
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
              child: UPIWalletWidget(
                startingTextData: "Net Banking",
                endingTextData: "Other Bank",
              )),
          BankRowWidget(),
          5.hb,
          Cards(),
          CardsTile(
            imageData: Images.mastercard,
            topTextData: "Credit/Debit Cards",
            middleTextData: "Get assured cashback of upto ₹150 behind",
            imageWidth: 45.w,
            imageHeight: 27.67.h,
            iconCheck: true,
          ),
          5.hb,
          Cards(
            textData: "Cash on Delivery",
          ),
          CardsTile(
            imageData: Images.cash_on_delivery,
            topTextData: "Cash on Delivery",
            middleTextData: "",
            bottomTextData:
                "Scan and pay via UPI on delivery. Ask delivery partner for details",
            imageWidth: 60.w,
            imageHeight: 51.35.h,
            iconCheck: false,
          ),
        ],
      ),
    );
  }
}

class UPIWidget extends StatelessWidget {
  String startingTextData;
  String endingTextData;
  UPIWidget(
      {super.key,
      this.startingTextData = "UPI",
      this.endingTextData = "Other UPI options"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      color: AppColors.white,
      child: Column(
        children: [
          UPIWalletWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Images.gpay,
                    height: 17.48.h,
                    width: 48.83.w,
                  ),
                  Text(
                    "Gpay",
                    style: Styles.tsb18.copyWith(fontWeight: FontWeight.w500),
                  ).lp(18.71.w),
                ],
              ),
              Container(
                height: 19.25.h,
                width: 19.35.w,
                decoration: BoxDecoration(
                  color: AppColors.lightBlue125,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.check_rounded,
                  size: 12.35,
                  color: AppColors.white,
                ),
              )
            ],
          ).sp(0, 14.h)
        ],
      ),
    );
  }
}

class UPIWalletWidget extends StatelessWidget {
  String startingTextData;
  String endingTextData;
  UPIWalletWidget(
      {super.key,
      this.startingTextData = "UPI",
      this.endingTextData = "Other UPI options"});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                startingTextData,
                style: Styles.tsb20.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.grey900),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    endingTextData,
                    style: Styles.tsb12.copyWith(
                        color: AppColors.lightBlue125,
                        fontWeight: FontWeight.w500),
                  ).rp(5.w),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 10.34,
                    color: AppColors.lightBlue125,
                  )
                ],
              )
            ],
          ).bp(12.h),
          Container(
            color: AppColors.grey100,
            height: 1.2.h,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class WalletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Wallets",
            style: Styles.tsSb18,
          ).sp(0, 14.h),
          Container(
            color: AppColors.grey100,
            height: 1.5.h,
            width: MediaQuery.of(context).size.width,
          ).bp(12.h),
          WalletHelperWidget(
            imageData: Images.razorpay,
            topTextData: "Razorpay",
            imageHeight: 26.65.h,
            imageWidth: 63.w,
          ),
          WalletHelperWidget(
            imageData: Images.paytm,
            topTextData: "Paytm",
            imageHeight: 19.h,
            imageWidth: 63.w,
          ),
          WalletHelperWidget(
            imageData: Images.amazon,
            topTextData: "Amazon Pay",
            imageHeight: 17.23.h,
            imageWidth: 63.w,
          ),
          WalletHelperWidget(
            imageData: Images.applePay,
            topTextData: "Apple pay",
            imageHeight: 20.84.h,
            imageWidth: 63.w,
          ),
          WalletHelperWidget(
            imageData: Images.paypal,
            topTextData: "Paypal",
            imageHeight: 26.33.h,
            imageWidth: 63.w,
            dividerCheck: true,
          ),
        ],
      ),
    );
  }
}

class WalletHelperWidget extends StatelessWidget {
  final String imageData;
  final String topTextData;
  String middleTextData;
  String bottomTextData;
  double imageHeight;
  double imageWidth;
  bool dividerCheck;
  WalletHelperWidget(
      {super.key,
      required this.imageData,
      required this.topTextData,
      this.middleTextData =
          "Get assured cashback of upto ₹150 behind a scratch card on orders above ₹350 T&CAdd items worth Rs233 to avail offer",
      this.bottomTextData = "Add Items 233 to avial offer",
      required this.imageWidth,
      required this.imageHeight,
      this.dividerCheck = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                imageData,
                height: imageHeight,
                width: imageWidth,
              ),
              16.wb,
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topTextData,
                      style: Styles.tsSb18,
                    ).bp(8.h),
                    middleTextData.isNotEmpty
                        ? Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.5),
                            child: Text(
                              middleTextData ?? "",
                              maxLines: 2,
                              style: Styles.tsR12
                                  .copyWith(color: AppColors.grey900),
                            )).bp(4.h)
                        : SizedBox.shrink(),
                    bottomTextData.isNotEmpty
                        ? Text(
                            bottomTextData ?? "",
                            style: Styles.tsR12
                                .copyWith(color: AppColors.lightBlue125),
                          )
                        : SizedBox.shrink()
                  ],
                ),
              ),
              Container(
                height: 19.25.h,
                width: 19.35.w,
                decoration: BoxDecoration(
                    color: AppColors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: AppColors.black.withOpacity(0.2), width: 1)),
                alignment: Alignment.center,
              )
            ],
          ).bp(12.h),
          dividerCheck
              ? const SizedBox.shrink()
              : Container(
                  color: AppColors.grey100,
                  height: 1.5.h,
                  width: MediaQuery.of(context).size.width,
                ).bp(12.h)
        ],
      ),
    );
  }
}

class BankImageWidget extends StatelessWidget {
  String imageData;
  String textData;
  BankImageWidget({super.key, required this.imageData, required this.textData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0.h),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.0)),
            child: Image.asset(
              imageData,
              height: 29.79.h,
              width: 29.79.w,
            )),
        SizedBox(
          height: 3.96.h,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 50.w),
          child: Text(
            textData,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11.53.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black),
          ),
        )
      ],
    );
  }
}

class BankRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child:
                  BankImageWidget(imageData: Images.sbi_logo, textData: "SBI")),
          Expanded(
              child: BankImageWidget(
                  imageData: Images.axis_logo, textData: "Axis")),
          Expanded(
              child: BankImageWidget(
                  imageData: Images.hdfc_logo, textData: "HDFC")),
          Expanded(
              child: BankImageWidget(
                  imageData: Images.kotak_logo, textData: "Kotak")),
          Expanded(
              child: BankImageWidget(
                  imageData: Images.icici_logo, textData: "ICICI"))
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  String textData;
  Cards({super.key, this.textData = "Cards"});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding:
          EdgeInsets.only(right: 20.w, left: 20.w, bottom: 12.h, top: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textData,
            style: Styles.tsb20.copyWith(
                fontWeight: FontWeight.w500, color: AppColors.grey900),
          ).bp(12.h),
          Container(
            color: AppColors.grey100,
            height: 1.5.h,
            width: MediaQuery.of(context).size.width,
          ).bp(12.h)
        ],
      ),
    );
  }
}

class CardsTile extends StatelessWidget {
  final String imageData;
  final String topTextData;
  String middleTextData;
  String bottomTextData;
  double imageHeight;
  double imageWidth;
  bool iconCheck;
  CardsTile(
      {super.key,
      required this.imageData,
      required this.topTextData,
      this.middleTextData =
          "Get assured cashback of upto ₹150 behind a scratch card on orders above ₹350 T&CAdd items worth Rs233 to avail offer",
      this.bottomTextData = "Add Items 233 to avial offer",
      required this.imageWidth,
      required this.imageHeight,
      required this.iconCheck});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 12.h),
      child: Row(
        children: [
          Image.asset(
            imageData,
            height: imageHeight,
            width: imageWidth,
          ),
          16.wb,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topTextData,
                  style: Styles.tsSb18,
                ).bp(8.h),
                middleTextData.isNotEmpty
                    ? Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.6),
                        child: Text(
                          middleTextData ?? "",
                          maxLines: 2,
                          style:
                              Styles.tsR12.copyWith(color: AppColors.grey900),
                        )).bp(4.h)
                    : SizedBox.shrink(),
                bottomTextData.isNotEmpty
                    ? ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.6),
                        child: Text(
                          bottomTextData ?? "",
                          style: Styles.tsR12
                              .copyWith(color: AppColors.lightBlue125),
                        ))
                    : SizedBox.shrink()
              ],
            ),
          ),
          iconCheck
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 21,
                  color: AppColors.grey500,
                )
              : Container(
                  height: 19.25.h,
                  width: 19.35.w,
                  decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: AppColors.black.withOpacity(0.2), width: 1)),
                  alignment: Alignment.center,
                )
        ],
      ).bp(12.h),
    );
  }
}
