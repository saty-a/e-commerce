import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyHomeSearch extends StatelessWidget {
  const EmptyHomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //100.hb,
            SvgPicture.asset(Images.icEmptyHomeSearch),
            //12.hb,
            Text('No Result found',textAlign: TextAlign.center, style: Styles.tsSb20.copyWith(color: AppColors.primary900),),
            10.hb,
            Text('Please check back later',textAlign: TextAlign.center, style: Styles.tsR14.copyWith(color: AppColors.grey700),),
            70.hb,
            OutlineButton(
              onPressed: () {
                Navigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.dashboard);
              },
              buttonText: 'Go to home',
              color: AppColors.white,
              borderColor: AppColors.primary,
              textStyle: Styles.tsSb18.copyWith(color: AppColors.primary),
            ).hp(100)
          ],
        ),
      ),
    );
  }
}
