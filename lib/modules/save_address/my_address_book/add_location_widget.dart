import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddLocation extends StatelessWidget {
  final String icon;
  final String title;
  final String address;
  final VoidCallback? onDeleteTap;

  const AddLocation(
      {Key? key,
      required this.icon,
      required this.title,
      this.address = "Address with city,arena and state",
      this.onDeleteTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          icon,
          color: AppColors.primary,
          height: 20.h,
          width: 16.w,
        ),
        30.wb,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Styles.tsSb16.copyWith(color: AppColors.grey900),
            ),
            6.hb,
            Text(
              address,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Styles.tsR14.copyWith(color: AppColors.grey700),
            ),
            10.hb,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.savedAddress);
                  },
                  child: Text(
                    'Edit',
                    style: Styles.tsSb12.copyWith(color: AppColors.grey800),
                  ),
                ),
                12.wb,
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            20.hb,
                            Text(
                              'Delete Address',
                              style: Styles.tsSb24
                                  .copyWith(color: AppColors.grey900),
                            ),
                            12.hb,
                            Text(
                              'Are you sure, you want to delete this address?',
                              textAlign: TextAlign.center,
                              style: Styles.tsR16
                                  .copyWith(color: AppColors.grey700),
                            ),
                            36.hb,
                            CommonButton(
                              buttonText: 'Yes, delete',
                              textStyle: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                              color: AppColors.error700,
                              borderRadius: 10,
                              onPressed: onDeleteTap!,
                              isDisabled: false,
                            ),
                            10.hb,
                            OutlineButton(
                              buttonText: 'Cancel',
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              borderRadius: 10,
                              color: AppColors.white,
                              textStyle: Styles.tsSb16
                                  .copyWith(color: AppColors.grey700),
                              borderColor: AppColors.grey500,
                            ),
                            30.hb,
                          ],
                        ).hp(20),
                      ),
                    );
                  },
                  child: Text(
                    'Delete',
                    style: Styles.tsSb12.copyWith(color: AppColors.error600),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
