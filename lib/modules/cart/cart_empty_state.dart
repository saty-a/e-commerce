import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/buttons/oultline_button.dart';

class CartEmptyState extends StatelessWidget {
  const CartEmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //110.hb,
          // const SizedBox(
          //   width: double.infinity,
          // ),
          SizedBox(
              // height: 280.h,
              // width: 280.w,
              child: SvgPicture.asset(Images.icEmptyCart)),
          Text(
            "Your cart is empty",
            style: Styles.tsSb20.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          Text(
            "Please continue shopping to add items\nto your cart",
            style: Styles.tsR14.copyWith(color: AppColors.grey700),
            textAlign: TextAlign.center,
          ),
          109.hb,
          OutlineButton(
            textStyle: Styles.tsSb16.copyWith(
              color: AppColors.primary,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.dashboard);
            },
            buttonText: "Start Shopping",
            borderColor: AppColors.primary,
          ).hp(88)
        ],
      ),
    );
  }
}
