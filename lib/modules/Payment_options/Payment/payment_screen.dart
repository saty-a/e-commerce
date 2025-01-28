import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/bottom_sheet/bottom_sheet.dart';
import '../../../widgets/common_app_bar.dart';
import '../../../widgets/dividers/app_divider.dart';
import '../../../widgets/payment/credit_debit_row.dart';
import '../../../widgets/payment/wallet_upi_row.dart';
import 'add_upi_bottomsheet.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.payment),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.creditDebitCard,
                    style: Styles.tsSb18,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.addCard);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary200,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 4),
                      child: Row(
                        children: [
                          Text(
                            AppStrings.addNewCard,
                            style:
                                Styles.tsR12.copyWith(color: AppColors.primary),
                          ),
                          6.wb,
                          SvgPicture.asset(
                            Images.icForwardArrow,
                            color: AppColors.primary,
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: .5,
              color: AppColors.grey300,
            ),
            commonBox(
                child: const Column(
              children: [
                CreditDebitRow(
                  image: Images.visaCard,
                  imageBorderColor: AppColors.grey100,
                  heading: "**** **** **** 6677",
                  subHeading: "expires 10/24",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Divider(
                    height: .5,
                    color: AppColors.grey300,
                  ),
                ),
                CreditDebitRow(
                  image: Images.masterCard,
                  imageBorderColor: AppColors.grey100,
                  heading: "**** **** **** 6677",
                  subHeading: "expires 10/24",
                ),
              ],
            )),
            const AppDivider(),
            commonBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.upi,
                    style: Styles.tsSb18,
                  ),
                  GestureDetector(
                    onTap: () {
                      showBottomSheetCustomized(context, AddUpiBottomsheet());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary200,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 4),
                      child: Row(
                        children: [
                          Text(
                            AppStrings.addNewUpi,
                            style:
                                Styles.tsR12.copyWith(color: AppColors.primary),
                          ),
                          6.wb,
                          SvgPicture.asset(
                            Images.icForwardArrow,
                            color: AppColors.primary,
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: .5,
              color: AppColors.grey300,
            ),
            commonBox(
                child: Column(
              children: [
                WalletUpiRow(
                  image: Images.googlePay,
                  imageBorderColor: AppColors.grey100,
                  heading: "123456@gpay",
                  showButton: false,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Divider(
                    height: .5,
                    color: AppColors.grey300,
                  ),
                ),
                WalletUpiRow(
                  image: Images.paytm,
                  imageBorderColor: AppColors.grey100,
                  heading: "123456@paytm",
                  showButton: false,
                  isPng: true,
                ),
              ],
            )),
            const AppDivider(),
            commonBox(
              child: const Text(
                "${AppStrings.wallet}s",
                style: Styles.tsSb18,
              ),
            ),
            const Divider(
              height: .5,
              color: AppColors.grey300,
            ),
            commonBox(
                child: Column(
              children: [
                WalletUpiRow(
                  image: Images.razorPay,
                  imageBorderColor: AppColors.grey100,
                  heading: AppStrings.razorPay,
                  isPng: true,
                  showButton: true,
                  buttonText: AppStrings.link,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Divider(
                    height: .5,
                    color: AppColors.grey300,
                  ),
                ),
                WalletUpiRow(
                  image: Images.amazonPay,
                  imageBorderColor: AppColors.grey100,
                  heading: AppStrings.amazonPay,
                  showButton: true,
                  buttonText: AppStrings.link,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Divider(
                    height: .5,
                    color: AppColors.grey300,
                  ),
                ),
                WalletUpiRow(
                  image: Images.applePay,
                  imageBorderColor: AppColors.grey100,
                  heading: AppStrings.applePay,
                  showButton: true,
                  buttonText: AppStrings.link,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Divider(
                    height: .5,
                    color: AppColors.grey300,
                  ),
                ),
                WalletUpiRow(
                  image: Images.payPal,
                  imageBorderColor: AppColors.grey100,
                  heading: AppStrings.payPal,
                  showButton: true,
                  buttonText: AppStrings.link,
                ),
              ],
            )),
            // commonBox(child: child)
          ],
        ),
      ),
    );
  }

  Widget commonBox({required Widget child}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: child,
    );
  }
}
