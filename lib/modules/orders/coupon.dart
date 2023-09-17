import 'dart:ui';

import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class Coupon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      appBar: AppBar(title: const Text(AppStrings.applyCoupon)),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          5.hb,
          TextFieldWidget(),
          5.hb,
          CouponWidget(),
          CouponWidget(applyCheck: true,),
          CouponWidget(applyCheck: true,),
          CouponWidget(),
          CouponWidget(),
          CouponWidget()

        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
               // constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.45,),
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 20.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Enter Coupon Code",
                  fillColor: Colors.white70,
              ),
            ).rp(20.w),
          ),
          Expanded(flex: 1,child: CommonButton(buttonText: "APPLY", onPressed: () {}, isDisabled: false,isExpanded : false,padding: EdgeInsets.symmetric(vertical: 12.h),))
        ],
      ),
    );
  }
}

class CouponWidget extends StatelessWidget{
  bool applyCheck;
  CouponWidget({super.key, this.applyCheck = false});
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CustomPaint(
                  size: Size(50.w, 130.h), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                Align(
                  alignment: Alignment.center,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child:  Text(
                          '30% OFF',
                       style: Styles.tsb16.copyWith(color: AppColors.white),
                       textAlign: TextAlign.center,),
                    )
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 5.h,bottom: 5.h),
              height: 130.h,
              width: MediaQuery.of(context).size.width*0.8,
              decoration : const BoxDecoration(
                  color: AppColors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14)),
            ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("COUPONCODE",style: Styles.tsb16.copyWith(color: AppColors.black.withOpacity(0.7)),).bp(4.h),
                        Text("Save Rs125 on this order",style: Styles.tsb12.copyWith(color: AppColors.darkGreen),)
                      ],
                    ),
                     applyCheck ? Text("APPLY",style: Styles.tsSb16.copyWith(color: AppColors.lightBlue125),) : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Container(height: 19.25.h,width: 19.35.w,
                          decoration: BoxDecoration(
                            color: AppColors.green125,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(Icons.check_rounded,size: 12.35,color: AppColors.white,),
                        ).rp(7.w),
                        Text("APPLIED",style: Styles.tsSb16.copyWith(color: AppColors.green125),)
                      ],)
                    ],
                  ).bp(8.h),
                  Row(
                    children: List.generate(1000~/10, (index) => Expanded(
                      child: Container(
                        color: index%2==0?Colors.transparent
                            :Colors.grey,
                        height: 0.9,
                      ),
                    )),
                  ),
                  Text("volutpat. blandit luptatum Lorem quis magna sed ea minim praesent dignissim dolore vulputate",style: Styles.tsR14.copyWith(color: AppColors.grey125,height: 1.2),
                  maxLines: 2,
                  )
                ],
              ),),
          )
        ],
      ).sp(20.h, 8.h),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.08620681);
    path_0.cubicTo(0,size.height*0.03859603,size.width*0.1356712,0,size.width*0.3030303,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width*0.3030303,size.height);
    path_0.cubicTo(size.width*0.1356712,size.height,0,size.height*0.9614052,0,size.height*0.9137931);
    path_0.lineTo(0,size.height*0.5833336);
    path_0.cubicTo(0,size.height*0.5833336,size.width*0.2424242,size.height*0.5608974,size.width*0.2575758,size.height*0.4935897);
    path_0.cubicTo(size.width*0.2727273,size.height*0.4262819,0,size.height*0.4038466,0,size.height*0.4038466);
    path_0.lineTo(0,size.height*0.08620681);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff315DE4).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}