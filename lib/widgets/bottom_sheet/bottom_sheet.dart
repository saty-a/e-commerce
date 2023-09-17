import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

showBottomSheetCustomized(
    BuildContext context, Widget widget) {
  return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.80,
          minWidth: MediaQuery.of(context).size.width * 0.50),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: widget,
        );
      });
  context:
  null;
}
