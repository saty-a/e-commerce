import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/authentication/login/textfield_heading_with%20_endText.dart';
import 'package:ecommerce_app/modules/orders/return_order/cubit/return_order_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnOrder extends StatelessWidget {
  const ReturnOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.returnOrder),
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        child: CommonButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.returnStatus);
          },
          buttonText: AppStrings.continueButton,
          isDisabled: false,
        ).only(top: 40.h, left: 10.w, right: 10.w, bottom: 10.h),
      ),
      body: Container(
        color: AppColors.grey100,
        child: Column(
          children: [
            5.hb,

            /// Product Details
            Container(
              color: AppColors.white,
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 89.h,
                        width: 73.w,
                        decoration: const BoxDecoration(
                            color: AppColors.primary100,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: SizedBox(
                              height: 89.h,
                              width: 73.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1585060544812"
                                    "-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxz"
                                    "ZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                    fit: BoxFit.cover),
                              )),
                        ),
                      ),
                      20.wb,
                      Expanded(
                        child: SizedBox(
                            height: 80.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apple iPhone 14 pro(Space black 128GB)",
                                  style: Styles.tsR18
                                      .copyWith(color: AppColors.grey900),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            5.hb,
            Flexible(
              child: Container(
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.whyWantToReturn,
                      style: Styles.tsSb18.copyWith(color: AppColors.grey800),
                    ).only(left: 20.w, bottom: 11.h),
                    const Divider(),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: 5,
                        itemBuilder: (context, index) => Row(
                          children: [
                            Text(
                              "Reason to return item",
                              style: Styles.tsR16
                                  .copyWith(color: AppColors.grey900),
                            ).only(left: 20.w, right: 20.w),
                            const Spacer(),
                            radioButton(value: index)
                          ],
                        ),
                      ),
                    )
                  ],
                ).only(top: 10.h, bottom: 10.h),
              ),
            ),
            5.hb,
            Container(
              color: AppColors.white,
              child: Column(
                children: [
                  TextFieldHeadingWithEndHeading(
                    startText: AppStrings.comments,
                    endText: AppStrings.optional,
                    endTextStyle:
                        Styles.tsR16.copyWith(color: AppColors.grey500),
                    startTextStyle:
                        Styles.tsSb18.copyWith(color: AppColors.grey800),
                  ),
                  const CustomTextField(
                    filledColor: AppColors.white,
                    borderColor: Colors.green,
                    maxlines: 3,
                    enabledBorderColor: AppColors.grey500,
                    // borderWidth: 1.0,
                    hintText: AppStrings.commentsHint,
                  )
                ],
              ).only(top: 5.h, left: 25.w, right: 25.w, bottom: 30.h),
            ),
            5.hb
          ],
        ),
      ),
    );
  }

  /// Radio Button
  Widget radioButton({required int value}) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: AppColors.grey400),
      child: BlocBuilder<ReturnOrderCubit, ReturnOrderState>(
        builder: (context, state) {
          return Radio(
              value: value,
              groupValue: state.groupValue,
              onChanged: (value) {
                context.read<ReturnOrderCubit>().radioButtonValue(value!);
              });
        },
      ),
    );
  }
}
