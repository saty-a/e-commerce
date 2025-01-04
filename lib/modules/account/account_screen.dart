import 'dart:io' show Platform;
import 'package:ecommerce/modules/account/widgets/list_row.dart';
import 'package:ecommerce/modules/account/widgets/logout.dart';
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../data/values/urls.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/bottom_sheet/bottom_sheet.dart';
import '../../widgets/buttons/common_button.dart';
import '../../widgets/dividers/app_divider.dart';
import '../../widgets/icon_label.dart';
import '../refer_and_earn/redeem_code.dart';
import '../refer_and_earn/share_code.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> iconsList = [
      Images.icOrder,
      Images.icAddressBook,
      Images.icSupport,
      Images.icAboutUs,
      Images.icTermsAndPolicies,
      Images.icRateUs,
    ];
    final List<String> listName = [
      AppStrings.orders,
      AppStrings.addressBook,
      AppStrings.support,
      AppStrings.aboutUs,
      AppStrings.termsAndPolicies,
      AppStrings.rateUs,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 24,
          ),
          child: Text(AppStrings.accountSettings),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.heyThere,
                    style: Styles.tsSb20,
                  ),
                  8.hb,
                  Text(
                    "8888888888",
                    style: Styles.tsR14.copyWith(color: AppColors.grey700),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary200,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                  child: Row(
                    children: [
                      Text(
                        AppStrings.change,
                        style: Styles.tsR12.copyWith(color: AppColors.primary),
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
        const AppDivider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: AppColors.primary100),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconLabel(
                    icon: Images.icOrder,
                    title: AppStrings.orders,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.orderList);
                    },
                  ),
                  IconLabel(
                    icon: Images.icWishlist,
                    title: AppStrings.wishlist,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.wishlist);
                    },
                  ),
                  IconLabel(
                    icon: Images.icWallet,
                    title: AppStrings.wallet,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.wallet);
                    },
                  ),
                  IconLabel(
                    icon: Images.icSupport,
                    title: AppStrings.support,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.support);
                    },
                  )
                ]),
          ),
        ),
        const AppDivider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              AppStrings.accountSettings,
              style: Styles.tsSb18,
            ),
            16.hb,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  ListRow(
                    icon: Images.icPassword,
                    title: AppStrings.password,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.resetScreen);
                    },
                  ),
                  ListRow(
                    icon: Images.icAddressBook,
                    title: AppStrings.addressBook,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.myAddresses);
                    },
                  ),
                  ListRow(
                    icon: Images.icNotification,
                    title: AppStrings.notification,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.notificationSettings);
                    },
                  ),
                  ListRow(
                    icon: Images.icPaymentOptions,
                    title: AppStrings.paymentOptions,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.payment);
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
        const AppDivider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              AppStrings.referAndEarn,
              style: Styles.tsSb18,
            ),
            16.hb,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  ListRow(
                    icon: Images.icReferTicket,
                    title: AppStrings.haveReferral,
                    onTap: () {
                      RedeemCodeSheet.openSheet(context);
                    },
                  ),
                  ListRow(
                    icon: Images.icShare,
                    title: AppStrings.shareWithFriends,
                    onTap: () {
                      ShareCodeSheet.openSheet(context);
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
        const AppDivider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              AppStrings.feedbackAndInformation,
              style: Styles.tsSb18,
            ),
            16.hb,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  ListRow(
                    icon: Images.icAboutUs,
                    title: AppStrings.aboutUs,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.aboutUs);
                    },
                  ),
                  ListRow(
                    icon: Images.icTermsAndPolicies,
                    title: AppStrings.termsAndPolicies,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.termsAndPolicies);
                    },
                  ),
                  ListRow(
                    icon: Images.icRateUs,
                    title: AppStrings.rateUs,
                    onTap: () async {
                      Uri url = Uri.parse(
                          Platform.isAndroid ? Urls.playStore : Urls.appStore);
                      try {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      } catch (e) {
                        debugPrint('Url launcher Exception');
                      }
                    },
                  ),
                  ListRow(
                    icon: Images.icFqa,
                    title: AppStrings.browseFaq,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.faq);
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
        const AppDivider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Column(
            children: <Widget>[
              CommonButton(
                buttonText: AppStrings.logOut,
                onPressed: () {
                  showBottomSheetCustomized(
                    context,
                    const Logout(),
                  );
                },
                color: AppColors.error700,
                textStyle: Styles.tsSb16.copyWith(color: AppColors.white),
                isDisabled: false,
              ),
              10.hb,
              Text(
                'App version 11.22.00',
                textAlign: TextAlign.center,
                style: Styles.tsL14.copyWith(color: AppColors.grey900),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
