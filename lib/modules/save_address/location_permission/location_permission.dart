import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/oultline_button.dart';

class LocationPermissions extends StatelessWidget {
  const LocationPermissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Cross Button Icon
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                Images.icCrossIcon,
                height: 18,
              )).only(top: 15, right: 15),
        ),
        // ListView(
        //   children: [
        20.hb,

        /// Location Permission Image
        SvgPicture.asset(Images.imageLocationPermission),
        30.hb,

        /// Location Permission Enabled or Not Enable Text.
        Text(
          AppStrings.locationPermissionEnabled,
          style: Styles.tsSb20.copyWith(color: AppColors.black),
        ),
        10.hb,

        /// Permission Location Hint Text.
        Text(
          AppStrings.pleaseLocationEnablePermissionText,
          textAlign: TextAlign.center,
          style: Styles.tsR14.copyWith(color: AppColors.grey700),
        ),
        30.hb,

        /// Enable Device Location.
        OutlineButton(
            color: AppColors.primaryLight,
            onPressed: () {
              Navigator.pop(context);
            },
            buttonText: AppStrings.enableDeviceLocation,
            textStyle: Styles.tsSb16.copyWith(
              color: AppColors.primary600,
            )).hp(36),
        10.hb,

        /// No Thanks Button.
        OutlineButton(
          onPressed: () {
            Navigator.pop(context);
          },
          buttonText: AppStrings.noThanks,
        ).hp(36),
        50.hb,
        //   ],
        // ).only(left: 37.5, right: 37.5),
      ],
    );
  }
}
