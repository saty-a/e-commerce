import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/values/images.dart';

class RazorPay extends StatelessWidget {
  const RazorPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(Images.imgRazorPaymentIcon,
                  height: 88.h, width: 227.w)),
          SvgPicture.asset(Images.imgPaymentSuccessful),
        ],
      ),
    );
  }
}
