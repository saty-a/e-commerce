import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/cart/cubit/cart_cubit.dart';
import 'package:ecommerce_app/modules/customer_reviews/customer_review/cubit/customer_review_cubit.dart';
import 'package:ecommerce_app/modules/home/cubit/home_cubit.dart';
import 'package:ecommerce_app/modules/product_details/cubit/product_deatils_cubit.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/modules/product_details/app_carousel.dart';
import 'package:ecommerce_app/widgets/dividers/app_divider.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:ecommerce_app/widgets/buttons/icon_button.dart';
import 'package:ecommerce_app/widgets/buttons/oultline_button.dart';
import 'package:ecommerce_app/widgets/cards/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/wishlist_product.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({Key? key}) : super(key: key);
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.homeSearch);
            },
            child: const SvgIconButton(asset: Images.icSearch).rp(20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.notification);
            },
            child: const SvgIconButton(asset: Images.icBellEmpty).rp(20),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<ProductDeatilsCubit, ProductDeatilsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.hb,
                const AppCarousel(),
                20.hb,
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.grey100),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(Images.icTruck),
                          const SizedBox(width: 4),
                          Text(
                            AppStrings.freeShipping,
                            style:
                            Styles.tsM14.copyWith(color: AppColors.grey800),
                          )
                        ],
                      ),
                    ),
                    //const Spacer(),
                    // Container(
                    //   height: 28,
                    //   width: 28,
                    //   padding: const EdgeInsets.all(4),
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: AppColors.primary200,
                    //       width: 0.34,
                    //     ),
                    //     color: AppColors.primary100,
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: SvgPicture.asset(Images.icHeart),
                    // ),
                    //const SizedBox(width: 16),
                    // Container(
                    //   height: 28,
                    //   width: 28,
                    //   padding: const EdgeInsets.all(4),
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: AppColors.primary200,
                    //       width: 0.34,
                    //     ),
                    //     color: AppColors.primary100,
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: SvgPicture.asset(Images.icShare),
                    // ),
                  ],
                ).hp(20),
                const Text(
                  "Apple iphone 14 Pro 128GB Deep blue",
                  style: Styles.tsSb24,
                ).hp(20).vp(4),
                // Row(
                //   children: [
                //     ...List.generate(
                //         5,
                //         (index) => SvgPicture.asset(
                //               index < 5 ? Images.icStarFill : Images.icStar,
                //               height: 18,
                //             ).rp(4)),
                //     Text(
                //       "(33,299 reviews)",
                //       style: Styles.tsR12.copyWith(color: AppColors.grey700),
                //     )
                //   ],
                // ).hp(20),
                4.hb,
                Row(
                  children: [
                    Text(
                      "₹ 1,29,900",
                      style: Styles.tsSb30.copyWith(color: AppColors.grey1000),
                    ),
                    4.wb,
                    Text(
                      "₹1,50,900",
                      style: Styles.tsR20.copyWith(
                        color: AppColors.grey700,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ],
                ).hp(20),
                4.hb,
                Text(
                  "In Stock",
                  style: Styles.tsR16.copyWith(
                    color: AppColors.success700,
                  ),
                ).hp(20),
                8.hb,
                const AppDivider(height: 3),
                // Row(
                //   children: [
                //     Expanded(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             "Select variant",
                //             style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                //           ),
                //           const SizedBox(height: 4),
                //           Text(
                //             "See all variant options",
                //             style: Styles.tsR14.copyWith(color: AppColors.grey700),
                //           ),
                //         ],
                //       ),
                //     ),
                //     const Icon(
                //       Icons.keyboard_arrow_up_sharp,
                //       color: AppColors.grey700,
                //       size: 30,
                //     )
                //   ],
                // ).hp(20).vp(10),
                //const AppDivider(height: 1),
                // Text(
                //   "Colour: Space Black",
                //   style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                // ).sp(10, 10),
                //const SizedBox(height: 8),
                // SizedBox(
                //   height: 160,
                //   child: ListView.separated(
                //       scrollDirection: Axis.horizontal,
                //       padding: const EdgeInsets.symmetric(horizontal: 20),
                //       itemBuilder: (_, index) => Column(
                //             children: [
                //               Container(
                //                 width: 110,
                //                 height: 130,
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(color: AppColors.primary),
                //                   color: AppColors.primary100,
                //                 ),
                //               ),
                //               const SizedBox(height: 4),
                //               Text(
                //                 "Space Black",
                //                 style: Styles.tsSb16
                //                     .copyWith(color: AppColors.grey900),
                //               )
                //             ],
                //           ),
                //       separatorBuilder: (_, __) => const SizedBox(width: 10),
                //       itemCount: 10),
                // ),
                //const SizedBox(height: 8),
                //const AppDivider(height: 1),
                // Text(
                //   "Storage: 128 GB",
                //   style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                // ).sp(10, 10),
                // SizedBox(
                //   height: 34,
                //   child: ListView.separated(
                //       scrollDirection: Axis.horizontal,
                //       padding: const EdgeInsets.symmetric(horizontal: 20),
                //       itemBuilder: (_, index) => Container(
                //             padding: const EdgeInsets.symmetric(
                //                 horizontal: 15, vertical: 6),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20),
                //               border: Border.all(color: AppColors.primary),
                //               color: AppColors.primary100,
                //             ),
                //             child: Text(
                //               "128 GB",
                //               style:
                //                   Styles.tsSb16.copyWith(color: AppColors.primary),
                //             ),
                //           ),
                //       separatorBuilder: (_, __) => const SizedBox(width: 10),
                //       itemCount: 5),
                // ),
                //const SizedBox(height: 20),
                //const AppDivider(height: 3),
                Text(
                  "Product Details",
                  style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                ).sp(20, 10),
                Text(
                  "Description",
                  style: Styles.tsR18.copyWith(color: AppColors.grey700),
                ).hp(20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
                  style: Styles.tsR14.copyWith(color: AppColors.grey600),
                ).sp(20, 4),
                GestureDetector(
                  onTap: () {
                    context
                        .read<ProductDeatilsCubit>()
                        .onReadMoreTap(!state.isLoadMore);
                  },
                  child: Visibility(
                    visible: state.isLoadMore == false ? true : false,
                    child: Row(
                      children: [
                        Text(
                          "Read more details",
                          style:
                          Styles.tsR14.copyWith(color: AppColors.primary),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.keyboard_arrow_down_rounded,
                            color: AppColors.primary)
                      ],
                    ).sp(20, 10),
                  ),
                ),
                Visibility(
                  visible: state.isLoadMore == true ? true : false,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
                    style: Styles.tsR14.copyWith(color: AppColors.grey600),
                  ).sp(20, 4),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<ProductDeatilsCubit>()
                        .onReadMoreTap(!state.isLoadMore);
                  },
                  child: Visibility(
                    visible: state.isLoadMore == true ? true : false,
                    child: Row(
                      children: [
                        Text(
                          "Read less details",
                          style:
                          Styles.tsR14.copyWith(color: AppColors.primary),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.keyboard_arrow_up_rounded,
                            color: AppColors.primary)
                      ],
                    ).sp(20, 10),
                  ),
                ),

                const AppDivider(height: 3),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.customerReviews);
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer reviews',
                                style: Styles.tsSb18
                                    .copyWith(color: AppColors.grey900),
                              ),
                              8.hb,
                              BlocBuilder<
                                  CustomerReviewCubit,
                                  CustomerReviewState>(
                                builder: (context, state) {
                                  return Text(
                                    '${state.customerReviewList
                                        .length} global ratings',
                                    style:
                                    Styles.tsR14.copyWith(
                                        color: AppColors.grey700),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        SvgPicture.asset(Images.icForwardArrow)
                      ],
                    ).sp(20, 10),
                  ),
                ),
                const AppDivider(height: 3),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushNamed(context, Routes.customerReviews);
                //   },
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Customer reviews",
                //               style:
                //                   Styles.tsSb18.copyWith(color: AppColors.grey900),
                //             ),
                //             const SizedBox(height: 4),
                //             Text(
                //               "33.223 global ratings",
                //               style:
                //                   Styles.tsR14.copyWith(color: AppColors.grey700),
                //             ),
                //           ],
                //         ),
                //       ),
                //       const Icon(
                //         Icons.arrow_forward_ios_rounded,
                //         color: AppColors.grey700,
                //         size: 24,
                //       )
                //     ],
                //   ).sp(20, 10),
                // ),
                //const AppDivider(height: 3),
                Text(
                  "Same products from this category",
                  style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                ).sp(20, 20),
                SizedBox(
                  height: 288,
                  child: BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        itemBuilder: (_, index) =>
                            ProductCard(
                              width: 150,
                              product: state.productList[index],
                              // product: Product(
                              //   imageUrl:
                              //   'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                              //   itemCompany: 'Apple',
                              //   itemName: 'Apple iphone 14 Pro 128GB Deep blue',
                              //   price: '₹10,000',
                              //   originalPrice: '₹8,888',
                              //   favourite: false,
                              // ),
                            ),
                        separatorBuilder: (_, __) => const SizedBox(width: 20),
                        itemCount: state.productList.length,
                        scrollDirection: Axis.horizontal,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20)
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(
              offset: const Offset(0, -1),
              color: AppColors.black.withOpacity(0.12),
              blurRadius: 5)
        ]),
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    return OutlineButton(
                      onPressed: () {
                        context.read<CartCubit>().addProduct(Product());
                        Navigator.pushNamed(context, Routes.myCart);
                      },
                      buttonText: 'Add to cart',
                    );
                  },
                ),
              ),
              10.wb,
              Expanded(
                  child: CommonButton(
                      isDisabled: false,
                      buttonText: "Buy Now",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.address);
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
