import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/common_app_bar.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.addNewCard),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            formField(
                label: AppStrings.nameOnCard,
                hint: AppStrings.enterCardHolderName,
                textInputType: TextInputType.text),
            21.hb,
            formField(
                label: AppStrings.cardNumber,
                hint: AppStrings.enterCardNumber,
                textInputType: TextInputType.number,
                suffixIcon: Icon(Icons.credit_card)),
            21.hb,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: formField(
                    label: AppStrings.expiration,
                    hint: AppStrings.dateHint,
                    textInputType: TextInputType.datetime,
                  ),
                ),
                32.wb,
                Expanded(
                    child: formField(
                  label: AppStrings.cvv,
                  hint: AppStrings.cvvHint,
                  textInputType: TextInputType.number,
                )),
              ],
            ),
            21.hb,
            formField(
              label: AppStrings.saveAs,
              hint: AppStrings.cardNicknameHint,
              textInputType: TextInputType.text,
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonButton(
              buttonText: AppStrings.saveCard,
              onPressed: () {},
              isDisabled: false),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget formField(
      {required String label,
      required String hint,
      required TextInputType textInputType,
      Widget? suffixIcon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.tsR16,
        ),
        8.hb,
        CustomTextField(
          hintText: hint,
          filledColor: AppColors.textFieldBackgroundColor,
          enabledBorderColor: AppColors.textFieldBackgroundColor,
          inputType: textInputType,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
