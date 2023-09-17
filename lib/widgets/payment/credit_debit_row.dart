import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditDebitRow extends StatelessWidget {
  final String image;
  final Color imageBorderColor;
  final String heading;
  final String subHeading;
  const CreditDebitRow(
      {Key? key,
      required this.image,
      required this.imageBorderColor,
      required this.heading,
      required this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              border: Border.all(color: AppColors.complimentary)),
          child: SvgPicture.asset(image),
        ),
        5.wb,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: Styles.tsSb18,
              ),
              Text(
                subHeading,
                style: Styles.tsR12.copyWith(color: AppColors.grey600),
              ),
            ],
          ),
        ),
        OutlineButton(
          onPressed: () {},
          buttonText: AppStrings.delete,
          isExpanded: false,
          borderColor: AppColors.error600,
          textStyle: Styles.tsSb12.copyWith(color: AppColors.error600),
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
        )
      ],
    );
  }
}
