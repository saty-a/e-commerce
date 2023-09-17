import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddUpiBottomsheet extends StatelessWidget {
  const AddUpiBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppStrings.addNewUpi,
                  style: Styles.tsSb24,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 30),
            child: CustomTextField(
              borderRadius: 10,
              hintText: AppStrings.enterUpi,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              obscureText: false,
            ),
          ),
          CommonButton(
              buttonText: AppStrings.verifyAndProceed,
              onPressed: () {},
              isDisabled: false)
        ],
      ),
    );
  }
}
