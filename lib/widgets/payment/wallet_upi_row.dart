import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletUpiRow extends StatelessWidget {
  final String image;
  final Color imageBorderColor;
  final String heading;
  final bool isPng;
  final bool showButton;
  final String buttonText;
  final Color buttonColor;

  const WalletUpiRow(
      {Key? key,
      required this.image,
      required this.imageBorderColor,
      required this.heading,
      this.isPng = false,
      required this.showButton,
      this.buttonText = "",
      this.buttonColor = AppColors.primary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 6,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              border: Border.all(color: AppColors.white)),
          child: isPng
              ? Image.asset(
                  image,
                )
              : SvgPicture.asset(image),
        ),
        5.wb,
        Text(
          heading,
          style: Styles.tsR16,
        ),
        const Spacer(),
        Visibility(
          visible: showButton,
          child: OutlineButton(
            borderRadius: 8,
            onPressed: () {},
            buttonText: buttonText,
            isExpanded: false,
            borderColor: buttonColor,
            textStyle: Styles.tsSb12.copyWith(color: buttonColor),
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
          ),
        )
      ],
    );
  }
}
