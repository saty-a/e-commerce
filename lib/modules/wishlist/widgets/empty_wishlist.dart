import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/oultline_button.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Images.isEmptyWishlist),
        30.hb,
        Text(
          'Your wishlist is empty',
          style: Styles.tsSb30.copyWith(color: AppColors.grey1000),
        ),
        20.hb,
        Text(
          'Save items that you like in your wishlist Review them anytime and easily move them to the bag',
          textAlign: TextAlign.center,
          style: Styles.tsR20.copyWith(color: AppColors.grey800),
        ).hp(30),
        95.hb,
        OutlineButton(
          buttonText: 'Shop Now',
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.dashboard, (Route<dynamic> route) => false);
          },
          borderColor: AppColors.primary,
          textStyle: Styles.tsSb18.copyWith(color: AppColors.primary),
        ).hp(70),
      ],
    );
  }
}
