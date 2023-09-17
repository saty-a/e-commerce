import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/save_address/my_address_book/add_location_widget.dart';
import 'package:ecommerce_app/modules/save_address/my_address_book/cubit/my_address_book_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/values/images.dart';
import '../../../styles/text_styles.dart';

class MyAddressBookScreen extends StatelessWidget {
  const MyAddressBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.myAddresses,
          style: Styles.tsSb20.copyWith(color: AppColors.grey900),
        ),
      ),
      body: Column(
        children: [
          20.hb,
          addAddressRow(context).hp(20),
          //10.hb,
          Expanded(
            child: BlocBuilder<MyAddressBookCubit, MyAddressBookState>(
              builder: (context, state) {
                return ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.addressList.length,
                  itemBuilder: (context, index) {
                    return AddLocation(
                      icon: state.addressList[index].icon!,
                      title: state.addressList[index].addressType!,
                      address: state.addressList[index].address!,
                      onDeleteTap: () {
                        context.read<MyAddressBookCubit>().removeAddress(index);
                        Navigator.pop(context);
                      },
                    ).vp(10);
                  },
                );
              },
            ).only(top: 20, left: 20, right: 20),
          ),
        ],
      ),
    );
  }

  /// Add Address Row
  Widget addAddressRow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.selectLocation);
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Images.icAddAddress,
              height: 29,
              width: 29,
            ),
            16.wb,
            Text(
              AppStrings.addNewAddress,
              style: Styles.tsSb18.copyWith(color: AppColors.primary),
            ),
            const Spacer(),
            SvgPicture.asset(Images.icForwardArrow)
          ],
        ),
      ),
    );
  }
}
