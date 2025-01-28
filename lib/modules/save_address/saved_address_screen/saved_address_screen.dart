import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../utils/app_regex/app_regex.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/textfields/custom_textfield.dart';
import '../../../widgets/textfields/text_textfield.dart';
import '../../authentication/login/textfield_heading_with _endText.dart';
import 'cubit/saved_address_cubit.dart';
import 'customized_container.dart';

class SavedAddress extends StatelessWidget {
  const SavedAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save address'),
      ),
      body: ListView(
        children: [
          20.hb,
          const TextAligned(
            text: 'Name',
          ),
          4.hb,
          const CustomTextField(hintText: AppStrings.nameHintText),
          12.hb,
          TextAligned(text: AppStrings.mobileNumber),
          4.hb,
          CustomTextField(
            prefixIcon: Container(
                margin: const EdgeInsets.only(left: 10, top: 12, bottom: 12),
                height: 5,
                width: 45,
                child: Row(
                  children: [
                    Text(
                      "+91",
                      style: Styles.tsR16.copyWith(color: Colors.black),
                    ),
                    const VerticalDivider(
                      color: AppColors.grey600,
                      thickness: 1,
                    )
                  ],
                )),
            inputType: TextInputType.number,
            onChanged: (controller) {},
            hintText: AppStrings.mobileNumberHintText,
            inputFormatters: [
              FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
              FilteringTextInputFormatter.deny(AppRegex.zero)
            ],
            maxLength: 10,
          ),
          12.hb,
          TextFieldHeadingWithEndHeading(
            startText: AppStrings.email,
            endText: AppStrings.optional,
            endTextStyle: Styles.tsR16.copyWith(color: AppColors.grey500),
          ),
          4.hb,
          CustomTextField(hintText: AppStrings.enterYourEmailHintText),
          12.hb,
          const TextAligned(
            text: AppStrings.pinCode,
          ),
          4.hb,
          const CustomTextField(
            hintText: AppStrings.pinCodeHintText,
            inputType: TextInputType.number,
            maxLength: 6,
          ),
          12.hb,
          const TextAligned(text: AppStrings.flatHouse),
          4.hb,
          const CustomTextField(hintText: AppStrings.flatHouseHintText),
          12.hb,
          const TextAligned(text: AppStrings.landMark),
          4.hb,
          const CustomTextField(
            hintText: AppStrings.landMarkHintText,
          ),
          12.hb,
          const TextAligned(text: AppStrings.townCity),
          4.hb,
          const CustomTextField(hintText: AppStrings.townCity),
          30.hb,
          TextAligned(
            text: AppStrings.saveAs,
            styles: Styles.tsSb16.copyWith(color: AppColors.grey900),
          ),
          10.hb,
          SizedBox(
            height: 40,
            child: BlocBuilder<SavedAddressCubit, SavedAddressState>(
              builder: (context, state) {
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomizedContainer(Images.icHome, AppStrings.home,
                        borderColor:
                            state.onButtonTap == 0 ? AppColors.primary : null,
                        buttonTextColor:
                            state.onButtonTap == 0 ? AppColors.primary : null,
                        iconColor: state.onButtonTap == 0
                            ? AppColors.primary
                            : null, () {
                      context.read<SavedAddressCubit>().onButtonSelected(0);
                    }),
                    CustomizedContainer(Images.icOffice, AppStrings.office,
                        borderColor:
                            state.onButtonTap == 1 ? AppColors.primary : null,
                        buttonTextColor:
                            state.onButtonTap == 1 ? AppColors.primary : null,
                        iconColor: state.onButtonTap == 1
                            ? AppColors.primary
                            : null, () {
                      context.read<SavedAddressCubit>().onButtonSelected(1);
                    }),
                    CustomizedContainer(Images.imgHotel, AppStrings.hotel,
                        borderColor:
                            state.onButtonTap == 2 ? AppColors.primary : null,
                        buttonTextColor:
                            state.onButtonTap == 2 ? AppColors.primary : null,
                        iconColor: state.onButtonTap == 2
                            ? AppColors.primary
                            : null, () {
                      context.read<SavedAddressCubit>().onButtonSelected(2);
                    }),
                    CustomizedContainer(
                        Images.icLocationBlue, AppStrings.others,
                        borderColor:
                            state.onButtonTap == 3 ? AppColors.primary : null,
                        buttonTextColor:
                            state.onButtonTap == 3 ? AppColors.primary : null,
                        iconColor: state.onButtonTap == 3
                            ? AppColors.primary
                            : null, () {
                      context.read<SavedAddressCubit>().onButtonSelected(3);
                    }),
                  ],
                );
              },
            ),
          ),
          30.hb,
          CommonButton(
              isDisabled: false,
              buttonText: AppStrings.saveAddress,
              onPressed: () {
                Navigator.pop(context);
              }),
          30.hb,
        ],
      ).hp(20),
    );
  }
}
