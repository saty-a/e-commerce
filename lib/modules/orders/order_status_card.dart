import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/status_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({
    Key? key,
    required this.isOrderDelivered,
    this.price,
    this.imageUrl,
    this.orderStatus,
    this.productList,
    this.buttonText,
    this.onPressed,
    this.orderPlacedTimeAndDate,
  }) : super(key: key);
  final String? price;
  final String? orderStatus;
  final String? productList;
  final String? buttonText;
  final VoidCallback? onPressed;
  final String? orderPlacedTimeAndDate;
  final bool isOrderDelivered;
  final String? imageUrl;

  /// Build
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.grey600)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// Product Image and Product Details
          Row(
            children: [
              /// Container For Holding Image
              Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: const BoxDecoration(
                      color: AppColors.lightBlueColor,
                      borderRadius: BorderRadius.all(Radius.circular(6.5))),
                  child: Center(
                    child: Container(
                      color: Colors.transparent,
                      height: 47.h,
                      width: 40.h,
                      /*child: SvgPicture.asset(imageUrl ?? ""),*/
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1585060544812"
                          "-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxz"
                          "ZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
              10.wb,

              /// Product Name and OrderStatus
              Expanded(
                child: SizedBox(
                  height: 70.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      2.hb,
                      Text(
                        productList ?? "Apple iPhone 14 pro(Space black 128GB)",
                        maxLines: 2,
                        style: Styles.tsSb16.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      2.hb,
                      Text(
                        orderStatus ?? "Order #ORD38240983",
                        style: Styles.tsR14.copyWith(color: AppColors.grey700),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          /// Divider
          const Divider(
            color: AppColors.grey300,
          ),

          /// Row Containing Button with Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatusButton(
                  buttonText: buttonText ?? "",
                  isOrderDelivered: isOrderDelivered,
                  onPressed: () {}),
              Text(
                price ?? "₹ 1,29,900.00",
                style: Styles.tsR14.copyWith(color: AppColors.grey900),
              )
            ],
          ).only(left: 6.5, right: 6.5),

          /// Divider
          const Divider(
            color: AppColors.grey300,
          ),

          /// Order Placed and View Button Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isOrderDelivered == true
                    ? "Placed on, ${orderPlacedTimeAndDate ?? "22 dec 2022"}"
                    : "Placed today, ${orderPlacedTimeAndDate ?? "7:09 am"}",
                style: Styles.tsR12.copyWith(color: AppColors.grey700),
              ),
              GestureDetector(
                onTap: onPressed ?? () {},
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "View details >",
                    style: Styles.tsSb12.copyWith(color: AppColors.primary),
                  ),
                ),
              )
            ],
          ).only(left: 6.5.w, right: 6.5.w)
        ],
      ).only(top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
    ).only(top: 20.h, left: 20.w, right: 20.w);
  }
}
