import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/common_button_2.dart';
import '../bills_details_widget.dart';
import '../order_change_location.dart';
import '../orders_status_bar_horizontal.dart';

class OrdersSummary extends StatelessWidget {
  const OrdersSummary({Key? key}) : super(key: key);

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
                  buttonText: "Make Payment",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.payments);
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
              secondCheck: true,
              thirdCheck: true,
            ),
          ),
          5.hb,

          /// Order Location
          OrderLocation(
            onPressed: () {},
          ),
          5.hb,
          CartWidget(),
          5.hb,
          const OrderDetailsWidget(),
          Container(
            color: AppColors.white,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width,
                  200.h), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: CustomClipper(),
              child: const CouponWidget(),
            ).sp(20, 20),
          ).only(bottom: 5.h, top: 2.h),

          /// Bills Details Widget
          const BillsDetailsWidget(
              price: "1,800",
              discount: "202",
              deliveryFee: "45",
              totalAmount: "1,499",
              gst: "17"),
          4.hb,
        ],
      ),
    );
  }
}

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.coupon);
      },
      child: Container(
        color: AppColors.white,
        child: Row(
          children: [
            Image.asset(
              Images.img_navbar,
              height: 28.h,
              width: 28.w,
            ),
            16.wb,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Apply Coupons",
                    style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                  ).bp(8.h),
                  Text(
                    "Save ₹100 on applying coupon codes",
                    style: Styles.tsR12.copyWith(color: AppColors.grey900),
                  )
                ],
              ),
            ),
            Image.asset(
              Images.chevron_right,
              height: 24.h,
              width: 24.w,
            ),
          ],
        ).sp(20, 12.h),
      ),
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Image img = Image.asset(
      Images.img_mask,
      fit: BoxFit.cover,
    );
    return Container(
      // height: 100.h,
      width: MediaQuery.of(context).size.width - 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: img.image,
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Images.img_box_offer,
            height: 39.h,
            width: 39.w,
          ),
          16.wb,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Flat 100 off",
                style: Styles.tsSb18.copyWith(color: AppColors.grey900),
              ).bp(8.h),
              Text(
                "Use code FIRSTORDER to get 200% off",
                style: Styles.tsR12.copyWith(
                    color: AppColors.grey900, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ).sp(16.w, 23.h),
    ).sp(20, 0);
  }
}

class CustomClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0007788162, size.height * 0.6260518);
    path_0.cubicTo(
        size.width * 0.0009754984,
        size.height * 0.6260663,
        size.width * 0.001204548,
        size.height * 0.6260747,
        size.width * 0.001463202,
        size.height * 0.6260723);
    path_0.cubicTo(
        size.width * 0.002412679,
        size.height * 0.6260639,
        size.width * 0.003762928,
        size.height * 0.6259036,
        size.width * 0.005377227,
        size.height * 0.6253012);
    path_0.cubicTo(
        size.width * 0.008601028,
        size.height * 0.6240964,
        size.width * 0.01290290,
        size.height * 0.6211181,
        size.width * 0.01717439,
        size.height * 0.6139831);
    path_0.cubicTo(
        size.width * 0.02144988,
        size.height * 0.6068410,
        size.width * 0.02571533,
        size.height * 0.5954988,
        size.width * 0.02882087,
        size.height * 0.5775434);
    path_0.cubicTo(
        size.width * 0.03192960,
        size.height * 0.5595687,
        size.width * 0.03383427,
        size.height * 0.5352084,
        size.width * 0.03348847,
        size.height * 0.5023253);
    path_0.cubicTo(
        size.width * 0.03314299,
        size.height * 0.4694843,
        size.width * 0.03089121,
        size.height * 0.4452024,
        size.width * 0.02766389,
        size.height * 0.4273036);
    path_0.cubicTo(
        size.width * 0.02443801,
        size.height * 0.4094120,
        size.width * 0.02027028,
        size.height * 0.3980795,
        size.width * 0.01616445,
        size.height * 0.3909301);
    path_0.cubicTo(
        size.width * 0.01206324,
        size.height * 0.3837880,
        size.width * 0.008015389,
        size.height * 0.3808024,
        size.width * 0.004999751,
        size.height * 0.3795964);
    path_0.cubicTo(
        size.width * 0.003490031,
        size.height * 0.3789916,
        size.width * 0.002233748,
        size.height * 0.3788313,
        size.width * 0.001351695,
        size.height * 0.3788229);
    path_0.cubicTo(
        size.width * 0.001138380,
        size.height * 0.3788205,
        size.width * 0.0009468536,
        size.height * 0.3788265,
        size.width * 0.0007788162,
        size.height * 0.3788386);
    path_0.lineTo(size.width * 0.0007788162, size.height * 0.1289530);
    path_0.cubicTo(
        size.width * 0.0007788162,
        size.height * 0.06407651,
        size.width * 0.01437763,
        size.height * 0.01148343,
        size.width * 0.03115265,
        size.height * 0.01148343);
    path_0.lineTo(size.width * 0.9672897, size.height * 0.01148343);
    path_0.cubicTo(
        size.width * 0.9840654,
        size.height * 0.01148343,
        size.width * 0.9976636,
        size.height * 0.06407651,
        size.width * 0.9976636,
        size.height * 0.1289530);
    path_0.lineTo(size.width * 0.9976636, size.height * 0.3605759);
    path_0.cubicTo(
        size.width * 0.9974579,
        size.height * 0.3605145,
        size.width * 0.9972181,
        size.height * 0.3604506,
        size.width * 0.9969470,
        size.height * 0.3603916);
    path_0.cubicTo(
        size.width * 0.9959439,
        size.height * 0.3601747,
        size.width * 0.9945202,
        size.height * 0.3600313,
        size.width * 0.9928100,
        size.height * 0.3603193);
    path_0.cubicTo(
        size.width * 0.9893988,
        size.height * 0.3608928,
        size.width * 0.9848287,
        size.height * 0.3631892,
        size.width * 0.9802461,
        size.height * 0.3701241);
    path_0.cubicTo(
        size.width * 0.9756573,
        size.height * 0.3770687,
        size.width * 0.9710405,
        size.height * 0.3886892,
        size.width * 0.9675763,
        size.height * 0.4079169);
    path_0.cubicTo(
        size.width * 0.9641090,
        size.height * 0.4271494,
        size.width * 0.9618380,
        size.height * 0.4537602,
        size.width * 0.9618380,
        size.height * 0.4903988);
    path_0.cubicTo(
        size.width * 0.9618380,
        size.height * 0.5270410,
        size.width * 0.9641090,
        size.height * 0.5540084,
        size.width * 0.9675701,
        size.height * 0.5737892);
    path_0.cubicTo(
        size.width * 0.9710280,
        size.height * 0.5935602,
        size.width * 0.9756355,
        size.height * 0.6059361,
        size.width * 0.9802181,
        size.height * 0.6136434);
    path_0.cubicTo(
        size.width * 0.9847975,
        size.height * 0.6213422,
        size.width * 0.9893645,
        size.height * 0.6244060,
        size.width * 0.9927757,
        size.height * 0.6255530);
    path_0.cubicTo(
        size.width * 0.9944860,
        size.height * 0.6261277,
        size.width * 0.9959128,
        size.height * 0.6262241,
        size.width * 0.9969128,
        size.height * 0.6261759);
    path_0.cubicTo(
        size.width * 0.9971994,
        size.height * 0.6261627,
        size.width * 0.9974486,
        size.height * 0.6261373,
        size.width * 0.9976636,
        size.height * 0.6261072);
    path_0.lineTo(size.width * 0.9976636, size.height * 0.8759410);
    path_0.cubicTo(
        size.width * 0.9976636,
        size.height * 0.9408181,
        size.width * 0.9840654,
        size.height * 0.9934108,
        size.width * 0.9672897,
        size.height * 0.9934108);
    path_0.lineTo(size.width * 0.03115265, size.height * 0.9934108);
    path_0.cubicTo(
        size.width * 0.01437763,
        size.height * 0.9934108,
        size.width * 0.0007788162,
        size.height * 0.9408181,
        size.width * 0.0007788162,
        size.height * 0.8759410);
    path_0.lineTo(size.width * 0.0007788162, size.height * 0.6260518);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001557632;
    paint_0_stroke.color = AppColors.black.withOpacity(0.7);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CartWidget extends StatelessWidget {
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
                child: SvgPicture.asset(Images.icClose, height: 8),
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
