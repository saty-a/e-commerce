import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/dividers/app_divider.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sort extends StatefulWidget {
  const Sort({Key? key}) : super(key: key);

  @override
  State<Sort> createState() => _SortState();
}

class _SortState extends State<Sort> {
  late int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
        ).tp(20).rp(20),
        Text(
          'Sort by',
          style: Styles.tsSb24.copyWith(color: AppColors.grey900),
        ).hp(20).bp(20),
        const AppDivider(height: 2),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              index == 3 ? const AppDivider(height: 1) : listItem(index),
          separatorBuilder: (_, index) => const AppDivider(
            height: 2,
          ),
          itemCount: 4,
        ),
        16.hb,
        Row(
          children: [
            Expanded(
              child: OutlineButton(
                onPressed: () => _onClearAllTap(),
                buttonText: 'Clear',
                textStyle: Styles.tsSb16.copyWith(color: AppColors.grey700),
                color: Colors.white,
                borderColor: AppColors.grey500,
              ),
            ),
            10.wb,
            Expanded(
              child: CommonButton(
                buttonText: "Apply",
                onPressed: () => _onConfirmTap(),
                color: AppColors.primary200,
                textStyle: Styles.tsSb16.copyWith(color: AppColors.primaryDark),
                isDisabled: false,
              ),
            ),
          ],
        ).hp(20),
        30.hb,
      ],
    );
  }

  Widget listItem(int index) {
    return GestureDetector(
      onTap: () => _onListItemTap(index),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Price: low to high',
                style: Styles.tsSb18.copyWith(color: AppColors.grey700),
              ),
            ),
            _selectedIndex == index
                ? Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.primary),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 14,
                    ),
                  )
                : Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary100, width: 1),
                      color: AppColors.primary200,
                      shape: BoxShape.circle,
                    ),
                  )
          ],
        ),
      ),
    );
  }

  void _onListItemTap(
    int index,
  ) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  void _onClearAllTap() {
    setState(() {
      _selectedIndex = -1;
    });
  }

  void _onConfirmTap() {
    Navigator.pop(context);
  }
}
