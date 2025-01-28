import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/values/images.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/cards/product_card.dart';
import '../../widgets/cart_empty_state.dart';
import '../../widgets/dividers/app_divider.dart';
import '../home/cubit/home_cubit.dart';
import 'cubit/cart_cubit.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 24,
          ),
          child: Text('My Cart'),
        ),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return state.cartList.isEmpty ?
          const CartEmptyState() :
          ListView(
            children: [
              10.hb,
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Subtotal',
                        style: Styles.tsR18.copyWith(color: AppColors.grey900),
                      ),
                      4.wb,
                      Text(
                        '\u{20B9}1,29,900',
                        style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                      )
                    ],
                  ),
                  4.hb,
                  Row(
                    children: [
                      Text(
                        'EMI Available',
                        style: Styles.tsR10.copyWith(color: AppColors.grey900),
                      ),
                      4.wb,
                      Text(
                        'Details',
                        style: Styles.tsR10.copyWith(color: AppColors.primary),
                      )
                    ],
                  ),
                ],
              ).sp(20, 10),
              const AppDivider(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.primary100),
                    child: SvgPicture.asset(Images.icLocationOutline),
                  ),
                  16.wb,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivered to',
                          style:
                          Styles.tsSb18.copyWith(color: AppColors.grey900),
                        ),
                        6.hb,
                        Text(
                          'Complete address with city, state, pin code',
                          style:
                          Styles.tsR14.copyWith(color: AppColors.grey700),
                        ),
                      ],
                    ),
                  ),
                  16.wb,
                  GestureDetector(
                    onTap: () {},
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
                            'Change',
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
              ).sp(20, 12),
              const AppDivider(
                height: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 80,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  12.wb,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apple Iphone 14 pro 128 GB',
                          style:
                          Styles.tsSb12.copyWith(color: AppColors.grey900),
                        ),
                        6.hb,
                        Text(
                          'Complete description of the product',
                          style:
                          Styles.tsR12.copyWith(color: AppColors.grey600),
                        ),
                        6.hb,
                        Text(
                          'In Stock',
                          style: Styles.tsR10
                              .copyWith(color: AppColors.success700),
                        ),
                        10.hb,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '₹1,39.900',
                              style: Styles.tsR12.copyWith(
                                color: AppColors.grey700,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1,
                              ),
                            ),
                            4.wb,
                            Text(
                              '₹1,29,900',
                              style: Styles.tsSb12
                                  .copyWith(color: AppColors.grey1000),
                            ),
                            4.wb,
                            Text(
                              '20% off',
                              style: Styles.tsSb12
                                  .copyWith(color: AppColors.success700),
                            )
                          ],
                        ),
                        12.hb,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Delivery by Fri Dec 23 |',
                              style: Styles.tsR10
                                  .copyWith(color: AppColors.grey600),
                            ),
                            2.wb,
                            Text(
                              'Free Delivery ',
                              style: Styles.tsR10
                                  .copyWith(color: AppColors.success700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<CartCubit>().clearCartList();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: AppColors.primary100,
                              border: Border.all(color: AppColors.primary200),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(Images.icClose, height: 8),
                        ),
                      ),
                      50.hb,
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary300),
                            shape: BoxShape.rectangle,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1',
                              style: Styles.tsSb10
                                  .copyWith(color: AppColors.primary),
                            ),
                            4.wb,
                            Flexible(
                              child: Text(
                                'Qty',
                                style: Styles.tsR10
                                    .copyWith(color: AppColors.black),
                              ),
                            ),
                            16.wb,
                            SvgPicture.asset(
                              Images.icDropDownIcon,
                              color: AppColors.primary,
                            )
                          ],
                        ).sp(4, 6),
                      )
                    ],
                  )
                ],
              ).sp(20, 15),
              const AppDivider(
                height: 4,
              ),
              Text(
                'Same products from this category',
                style: Styles.tsSb18.copyWith(color: AppColors.grey900),
              ).sp(20, 20),
              12.hb,
              SizedBox(
                height: 288,
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ProductCard(
                            width: 150,
                            product: state.productList[index],
                          ),
                      separatorBuilder: (_, index) => 20.wb,
                      itemCount: state.productList.length,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return state.cartList.isEmpty ? const SizedBox() :
            GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.orderSummary);
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Row(
                children: [
                  Text(
                    'Item total :',
                    style: Styles.tsR14.copyWith(color: AppColors.white),
                  ),
                  5.wb,
                  Expanded(
                    child: Text(
                      '₹1,29,917.00',
                      style: Styles.tsb16.copyWith(color: AppColors.white),
                    ),
                  ),
                  Text(
                    'Place Order',
                    style: Styles.tsSb16.copyWith(color: AppColors.white),
                  ),
                  7.wb,
                  SvgPicture.asset(Images.icForwardArrow,
                      color: AppColors.white, height: 12),
                ],
              ).sp(20, 20),
            ).sp(10, 5),
          );
        },
      ),
    );
  }
}
