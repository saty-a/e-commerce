import 'package:ecommerce_app/data/models/address_model.dart';
import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/save_address/my_address_book/cubit/my_address_book_cubit.dart';
import 'package:ecommerce_app/modules/save_address/save_address/cubit/save_address_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/app_regex/app_regex.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:ecommerce_app/widgets/textfields/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaveAddress extends StatelessWidget {
  SaveAddress({Key? key, required this.flathouse, required this.landmark})
      : super(key: key);
  final String flathouse;
  final String landmark;

  TextEditingController landmarkController = TextEditingController();
  TextEditingController flathouseController = TextEditingController();
  TextEditingController recipientsNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void setValues() {
    landmarkController.text = flathouse;
    flathouseController.text = landmark;
  }

  @override
  Widget build(BuildContext context) {
    setValues();
    return BlocProvider(
      create: (context) => SaveAddressCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration: const BoxDecoration(
                  color: AppColors.grey200,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  Images.icClose,
                  color: AppColors.grey900,
                  height: 14,
                ),
              ),
            ),
          ).tp(20),
          Text(
            AppStrings.enterCompleteAddress,
            style: Styles.tsSb20.copyWith(color: AppColors.black),
          ),
          20.hb,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.saveAs,
                    style: Styles.tsSb16.copyWith(color: AppColors.black),
                  ),
                  6.hb,
                  SizedBox(
                    height: 40,
                    child: BlocBuilder<SaveAddressCubit, SaveAddressState>(
                      builder: (context, state) {
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            customizedContainer(context, Images.icHome, "Home",
                                borderColor: state.onButtonTap == 0
                                    ? AppColors.primary
                                    : null,
                                buttonTextColor: state.onButtonTap == 0
                                    ? AppColors.primary
                                    : null,
                                iconColor: state.onButtonTap == 0
                                    ? AppColors.primary
                                    : null, () {
                              context
                                  .read<SaveAddressCubit>()
                                  .onButtonSelected(0);
                            }),
                            customizedContainer(
                                context, Images.icOffice, "Office",
                                borderColor: state.onButtonTap == 1
                                    ? AppColors.primary
                                    : null,
                                buttonTextColor: state.onButtonTap == 1
                                    ? AppColors.primary
                                    : null,
                                iconColor: state.onButtonTap == 1
                                    ? AppColors.primary
                                    : null, () {
                              context
                                  .read<SaveAddressCubit>()
                                  .onButtonSelected(1);
                            }),
                            customizedContainer(
                                context, Images.imgHotel, "Hotel",
                                borderColor: state.onButtonTap == 2
                                    ? AppColors.primary
                                    : null,
                                buttonTextColor: state.onButtonTap == 2
                                    ? AppColors.primary
                                    : null,
                                iconColor: state.onButtonTap == 2
                                    ? AppColors.primary
                                    : null, () {
                              context
                                  .read<SaveAddressCubit>()
                                  .onButtonSelected(2);
                            }),
                            customizedContainer(
                                context, Images.icLocationBlue, "Others",
                                borderColor: state.onButtonTap == 3
                                    ? AppColors.primary
                                    : null,
                                buttonTextColor: state.onButtonTap == 3
                                    ? AppColors.primary
                                    : null,
                                iconColor: state.onButtonTap == 3
                                    ? AppColors.primary
                                    : null, () {
                              context
                                  .read<SaveAddressCubit>()
                                  .onButtonSelected(3);
                            }),
                          ],
                        );
                      },
                    ),
                  ),
                  12.hb,
                  const TextAligned(text: AppStrings.name),
                  4.hb,
                  CustomTextField(
                    hintText: AppStrings.recipientsName,
                    controller: recipientsNameController,
                  ),
                  8.hb,
                  const TextAligned(text: AppStrings.flatHouse),
                  4.hb,
                  CustomTextField(
                    hintText: AppStrings.flatHouseHintText,
                    controller: flathouseController,
                  ),
                  8.hb,
                  const TextAligned(text: 'Mobile number'),
                  4.hb,
                  CustomTextField(
                    prefixIcon: Container(
                        margin: const EdgeInsets.only(
                            left: 10, top: 12, bottom: 12),
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
                    controller: mobileController,
                  ),
                  8.hb,
                  const TextAligned(text: 'Email'),
                  4.hb,
                  CustomTextField(
                    hintText: 'Enter email address',
                    controller: emailController,
                  ),
                  8.hb,
                  const TextAligned(text: AppStrings.landMark),
                  4.hb,
                  CustomTextField(
                    hintText: AppStrings.landMarkHintText,
                    controller: landmarkController,
                  ),
                  30.hb,
                  BlocBuilder<SaveAddressCubit, SaveAddressState>(
                    builder: (context, state) {
                      return CommonButton(
                        isDisabled: false,
                        buttonText: AppStrings.saveAddress,
                        onPressed: () {
                          context
                              .read<MyAddressBookCubit>()
                              .addAddresslist(Address(
                                address:
                                    "${flathouseController.text} ${landmarkController.text}",
                                addressType: state.onButtonTap == 0
                                    ? "Home"
                                    : state.onButtonTap == 1
                                        ? "Office"
                                        : state.onButtonTap == 2
                                            ? "Hotel"
                                            : "Other",
                                icon: state.onButtonTap == 0
                                    ? Images.icHome
                                    : state.onButtonTap == 1
                                    ? Images.icOffice
                                    : state.onButtonTap == 2
                                    ? Images.imgHotel
                                    : Images.icLocationBlue,
                              )
                                  //   recipientsNameController.text,
                                  //   flathouseController.text + landmarkController.text,
                                  //   mobileController.text,
                                  // emailController.text,
                                  );
                          Navigator.of(context).popUntil((route) =>
                              route.settings.name == Routes.myAddresses);
                        },
                      );
                    },
                  ),
                  30.hb
                ],
              ),
            ),
          ),
          // 6.hb,
          // SizedBox(
          //   height: 40,
          //   child: BlocBuilder<SaveAddressCubit, SaveAddressState>(
          //     builder: (context, state) {
          //       return ListView(
          //         scrollDirection: Axis.horizontal,
          //         children: [
          //           customizedContainer(context, Images.icHome, "Home",
          //               borderColor:
          //                   state.onButtonTap == 0 ? AppColors.primary : null,
          //               buttonTextColor:
          //                   state.onButtonTap == 0 ? AppColors.primary : null,
          //               iconColor: state.onButtonTap == 0
          //                   ? AppColors.primary
          //                   : null, () {
          //             context.read<SaveAddressCubit>().onButtonSelected(0);
          //           }),
          //           customizedContainer(context, Images.icOffice, "Office",
          //               borderColor:
          //                   state.onButtonTap == 1 ? AppColors.primary : null,
          //               buttonTextColor:
          //                   state.onButtonTap == 1 ? AppColors.primary : null,
          //               iconColor: state.onButtonTap == 1
          //                   ? AppColors.primary
          //                   : null, () {
          //             context.read<SaveAddressCubit>().onButtonSelected(1);
          //           }),
          //           customizedContainer(context, Images.imgHotel, "Hotel",
          //               borderColor:
          //                   state.onButtonTap == 2 ? AppColors.primary : null,
          //               buttonTextColor:
          //                   state.onButtonTap == 2 ? AppColors.primary : null,
          //               iconColor: state.onButtonTap == 2
          //                   ? AppColors.primary
          //                   : null, () {
          //             context.read<SaveAddressCubit>().onButtonSelected(2);
          //           }),
          //           customizedContainer(
          //               context, Images.icLocationBlue, "Others",
          //               borderColor:
          //                   state.onButtonTap == 3 ? AppColors.primary : null,
          //               buttonTextColor:
          //                   state.onButtonTap == 3 ? AppColors.primary : null,
          //               iconColor: state.onButtonTap == 3
          //                   ? AppColors.primary
          //                   : null, () {
          //             context.read<SaveAddressCubit>().onButtonSelected(3);
          //           }),
          //         ],
          //       );
          //     },
          //   ),
          // ),
          // 12.hb,
          // const TextAligned(text: AppStrings.name),
          // 4.hb,
          // const CustomTextField(
          //   hintText: AppStrings.recipientsName,
          // ),
          // 8.hb,
          // const TextAligned(text: AppStrings.flatHouse),
          // 4.hb,
          // const CustomTextField(
          //   hintText: AppStrings.flatHouseHintText,
          // ),
          // 8.hb,
          // const TextAligned(text: 'Mobile number'),
          // 4.hb,
          // CustomTextField(
          //   prefixIcon: Container(
          //       margin: const EdgeInsets.only(left: 10, top: 12, bottom: 12),
          //       height: 5,
          //       width: 45,
          //       child: Row(
          //         children: [
          //           Text(
          //             "+91",
          //             style: Styles.tsR16.copyWith(color: Colors.black),
          //           ),
          //           const VerticalDivider(
          //             color: AppColors.grey600,
          //             thickness: 1,
          //           )
          //         ],
          //       )),
          //   inputType: TextInputType.number,
          //   onChanged: (controller) {},
          //   hintText: AppStrings.mobileNumberHintText,
          //   inputFormatters: [
          //     FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
          //     FilteringTextInputFormatter.deny(AppRegex.zero)
          //   ],
          //   maxLength: 10,
          // ),
          // 8.hb,
          // const TextAligned(text: 'Email'),
          // 4.hb,
          // const CustomTextField(
          //   hintText: 'Enter email address',
          // ),
          // 8.hb,
          // const TextAligned(text: AppStrings.landMark),
          // 4.hb,
          // const CustomTextField(
          //   hintText: AppStrings.landMarkHintText,
          // ),
          // 30.hb,
          // CommonButton(
          //   isDisabled: false,
          //   buttonText: AppStrings.saveAddress,
          //   onPressed: () {
          //     Navigator.of(context).popUntil(
          //         (route) => route.settings.name == Routes.myAddresses);
          //   },
          // ),
          // 30.hb
        ],
      ),
    ).hp(20);
  }

  /// Customized Container
  Widget customizedContainer(BuildContext context, String iconPath,
      String buttonText, VoidCallback onTap,
      {Color? borderColor, Color? iconColor, Color? buttonTextColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor ?? AppColors.grey700),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                color: iconColor ?? AppColors.grey600,
              ),
              5.wb,
              Text(
                buttonText,
                style: Styles.tsSb12
                    .copyWith(color: buttonTextColor ?? AppColors.grey700),
              ),
            ],
          ).only(top: 10, left: 10, right: 10, bottom: 10)),
    ).only(right: 10);
  }
}
