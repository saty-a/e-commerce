import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';

class OrderPlaced extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(title: const Text(AppStrings.orderSummary)),
      body: Center(
        child: BankImageWidget(imageData: Images.order_success ,firstTextData: "Order Placed",secondTextData: "Yay!, 2990 Saved",),
      )
    );
  }
}

class BankImageWidget extends StatelessWidget{
  String imageData;
  String firstTextData;
  String secondTextData;
  BankImageWidget({super.key,required this.imageData,required this.firstTextData,required this.secondTextData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageData,
          height: 212.h,
          width: 212.w,
        ).bp(8.h),
        Text(
          firstTextData,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black),
        ).bp(8.h),
        Text(
          secondTextData,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.lightGreenColor),
        )
      ],
    );
  }

}