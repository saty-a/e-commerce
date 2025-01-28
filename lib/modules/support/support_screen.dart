import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/buttons/outline_icon_button.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  final String email = "priyam@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.customerSupport),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            20.hb,
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary100,
                  border: Border.all(
                    color: AppColors.primary200,
                  )),
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(Images.icCustomerSupport),
            ),
            30.hb,
            Text(
              AppStrings.customerSupportTeam,
              style: Styles.tsSb16.copyWith(color: AppColors.grey800),
            ),
            30.hb,
            OutlineIconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.supportChat);
              },
              buttonText: AppStrings.chat,
              prefixIcon: Images.icChat,
              suffixIcon: Images.icForwardArrow,
              color: AppColors.primary100,
              borderColor: AppColors.primary300,
              textStyle: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ),
            20.hb,

            /// Call Now Button
            OutlineIconButton(
              onPressed: () {
                /// Calling call function here
                call();
              },
              buttonText: AppStrings.callNow,
              prefixIcon: Images.icCallNow,
              suffixIcon: Images.icForwardArrow,
              color: AppColors.primary100,
              borderColor: AppColors.primary300,
              textStyle: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ),
            20.hb,
            OutlineIconButton(
              onPressed: () async {
                await _sendMail();
              },
              buttonText: AppStrings.sendEmail,
              prefixIcon: Images.icSendEmail,
              suffixIcon: Images.icForwardArrow,
              color: AppColors.primary100,
              borderColor: AppColors.primary300,
              textStyle: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ),
          ],
        ),
      ),
    );
  }

  /// Dailer
  Future<void> call() async {
    Uri phoneno = Uri.parse('tel:+917700000066');
    if (await launchUrl(phoneno)) {
      print("Dailer is open");
    } else {
      print("Dialer is close");
    }
  }

  /// Mail Function
  Future<void> sendMail(BuildContext context) async {
    String encodeQueryParameters(Map<String, String> params) => params.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');

    const subject = 'ECommerce Application!';
    final String emailUri = Uri(
      scheme: 'mailto',
      path: '',
      query:
          encodeQueryParameters({'subject': subject, 'body': "ECommerce App"}),
    ).toString();
    Navigator.pop(context); // close invite dialog
    if (await canLaunchUrl(Uri.parse(emailUri))) {
      await launch(emailUri);
    } else {
      print("Not working properly");
    }
  }

  Future<void> launchEmail() async {
    final url =
        'mailto:priyam@gmail.com?subject=${Uri.encodeFull("ECommerce Application")}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {}
  }

  _sendMail() async {
    // Android and iOS
    const uri = 'mailto:test@example.org?subject=Greetings&body=Hello%20World';
    if (await canLaunchUrl(Uri.parse(uri))) {
      await launchUrl(Uri.parse(uri));
    } else {
      throw 'Could not launch $uri';
    }
  }
}
