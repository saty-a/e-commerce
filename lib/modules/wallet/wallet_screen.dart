import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/values/constants.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/buttons/common_button.dart';
import '../../widgets/buttons/oultline_button.dart';
import '../../widgets/cards/transaction_activity_card.dart';
import '../../widgets/common_app_bar.dart';
import '../../widgets/dividers/app_divider.dart';
import '../../widgets/textfields/custom_textfield.dart';
import '../account/widgets/list_row.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: AppStrings.wallet,
      ),
      body: ListView(
        children: [
          commonBox(
              child: Container(
            padding:
                const EdgeInsets.only(top: 35, bottom: 30, right: 40, left: 20),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withOpacity(.81),
                  ],
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${AppStrings.rupeeSymbol} 0",
                      style: Styles.tsb30.copyWith(color: AppColors.white),
                    ),
                    8.hb,
                    Text(
                      AppStrings.yourBalance,
                      style: Styles.tsR18.copyWith(color: AppColors.white),
                    )
                  ],
                ),
                SvgPicture.asset(Images.walletBalance)
              ],
            ),
          )),
          const AppDivider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ListRow(
              icon: Images.icReferTicket,
              title: AppStrings.redeemVoucher,
              onTap: () {
                Navigator.pushNamed(context, Routes.myAddresses);
              },
            ),
          ),
          const AppDivider(),
          commonBox(
              child: Column(
            children: [
              const CustomTextField(
                borderRadius: 10,
                hintText: "${AppStrings.rupeeSymbol} 1000",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                inputType: TextInputType.number,
              ),
              24.hb,
              SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.topUpPrice.length,
                  itemBuilder: (BuildContext context, int index) {
                    return OutlineButton(
                      isExpanded: false,
                      onPressed: () {},
                      buttonText:
                          "${AppStrings.rupeeSymbol} ${Constants.topUpPrice.elementAt(index)}",
                      textStyle: Styles.tsSb16,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      borderRadius: 10,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              24.hb,
              CommonButton(
                buttonText: AppStrings.topUp,
                onPressed: () {},
                color: AppColors.primary,
                textStyle: Styles.tsSb16.copyWith(color: AppColors.white),
                isDisabled: false,
              ),
            ],
          )),
          const AppDivider(),
          commonBox(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.recentActivity,
                    style: Styles.tsSb20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.transactionActivity);
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
                            AppStrings.viewAll,
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
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10),
                child: Divider(
                  height: .5,
                  color: AppColors.grey300,
                ),
              ),
              TransactionActivityCard(
                  success:
                      Constants.paymentHistory.elementAt(0)["success"] ?? "",
                  amount: Constants.paymentHistory.elementAt(0)["amount"] ?? "",
                  timestamp:
                      Constants.paymentHistory.elementAt(0)["timestamp"] ?? ""),
              TransactionActivityCard(
                  success:
                      Constants.paymentHistory.elementAt(1)["success"] ?? "",
                  amount: Constants.paymentHistory.elementAt(1)["amount"] ?? "",
                  timestamp:
                      Constants.paymentHistory.elementAt(1)["timestamp"] ?? "")
            ],
          ))
        ],
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
