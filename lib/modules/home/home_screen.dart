import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../routes/app_routes.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/cards/product_card.dart';
import '../../widgets/containers/home_search_container.dart';
import '../../widgets/dividers/app_divider.dart';
import '../wishlist/cubit/wishlist_cubit.dart';
import 'cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
                top: 12),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     Expanded(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Row(
                //             children: [
                //               SvgPicture.asset(Images.icLocation),
                //               const SizedBox(width: 8),
                //               Text(
                //                 "Location",
                //                 style: Styles.tsb16
                //                     .copyWith(color: AppColors.grey100),
                //               ),
                //               const SizedBox(width: 8),
                //               const Icon(
                //                 Icons.keyboard_arrow_down,
                //                 color: AppColors.grey100,
                //               ),
                //             ],
                //           ),
                //           const SizedBox(height: 8),
                //           Text(
                //             "Complete address with state, city",
                //             style:
                //                 Styles.tsR14.copyWith(color: AppColors.grey100),
                //           )
                //         ],
                //       ),
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //           color: AppColors.white.withOpacity(0.2),
                //           shape: BoxShape.circle),
                //       padding: const EdgeInsets.all(6),
                //       child: SvgPicture.asset(Images.icNotification),
                //     )
                //   ],
                // ),
                10.hb,
                // CustomTextField(
                //   filledColor: AppColors.white,
                //   prefixIcon: Padding(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 20, vertical: 16),
                //     child: SvgPicture.asset(
                //       Images.icSearch,
                //     ),
                //   ),
                //   hintText: AppStrings.search,
                //   // suffixIcon: Padding(
                //   //   padding: const EdgeInsets.symmetric(
                //   //       horizontal: 20, vertical: 16),
                //   //   child: SvgPicture.asset(
                //   //     Images.icMic,
                //   //   ),
                //   // ),
                // ),
                HomeSearchContainer(
                  onTap: () => Navigator.pushNamed(context, Routes.homeSearch),
                ),
                14.hb,
                state.location.isNotEmpty?
                Row(
                  children: [
                    SvgPicture.asset(Images.icLocation),
                    const SizedBox(width: 8),
                    Text(
                      state.location,
                      style: Styles.tsb14.copyWith(color: AppColors.grey100),
                    ),
                    const SizedBox(width: 8),
                  ],
                ):const SizedBox()
              ],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        children: [
          16.hb,
          SizedBox(
            height: 80,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (context, index) =>
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.productCategory,
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 54,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1467043237213-65f2da53396f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fEZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                ),
                                fit: BoxFit.cover),
                            color: AppColors.primary200,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Fashion",
                          style: Styles.tsR12,
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemCount: 30,
              scrollDirection: Axis.horizontal,
            ),
          ),
          8.hb,
          const AppDivider(),
          10.hb,
          //const AppCarousel(),
          //10.hb,
          //const AppDivider(),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         "Brand in the spotlight",
          //         style: Styles.tsSb18.copyWith(color: AppColors.grey900),
          //       ),
          //       const Spacer(),
          //       Text(
          //         "View All",
          //         style: Styles.tsSb12.copyWith(color: AppColors.primary),
          //       ),
          //       const Icon(
          //         Icons.arrow_forward_ios_rounded,
          //         color: AppColors.primary,
          //         size: 12,
          //       )
          //     ],
          //   ),
          // ),
          // GridView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     childAspectRatio: 110 / 145,
          //     mainAxisSpacing: 12,
          //     crossAxisSpacing: 12,
          //   ),
          //   itemCount: 6,
          //   itemBuilder: (_, index) => const BrandCard(),
          // ),
          //const SizedBox(height: 20),
          //const AppDivider(),
          //const SizedBox(height: 20),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     "Recently viewed ",
          //     style: Styles.tsSb18.copyWith(color: AppColors.grey900),
          //   ),
          // ),
          // SizedBox(
          //   height: 150,
          //   child: ListView.separated(
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (_, index) => const RecentViewCard(),
          //       separatorBuilder: (_, __) => const SizedBox(width: 12),
          //       itemCount: 10),
          // ),
          //const AppDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Text(
                  AppStrings.headphones,
                  style: Styles.tsSb18.copyWith(color: AppColors.grey900),
                ),
                const Spacer(),
                Text(
                  AppStrings.viewAll,
                  style: Styles.tsSb12.copyWith(color: AppColors.primary),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.primary,
                  size: 12,
                )
              ],
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 198 / 322,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                ),
                itemCount: state.productList.length,
                itemBuilder: (_, index) {
                  return ProductCard(
                    onProductTap:
                        () {
                      Navigator.of(context).pushNamed(Routes.productDetails);
                    },
                    product: state.productList[index],
                    showFavouriteIcon: true,
                    //isSelected: state.productList[index].favourite,
                    onWishlistTap: () {
                      context.read<HomeCubit>().onWishlistTap(state.productList[index].id!);
                      context.read<WishlistCubit>().addWishlistProduct(state
                          .productList[index]);
                      //state.productList[index].favourite = true;
                      // context.read<WishlistCubit>().addProduct(
                      //       Product(
                      //         itemCompany: 'Apple',
                      //         itemName: 'Iphone',
                      //         price: '100000',
                      //         originalPrice: '120000',
                      //         imageUrl:
                      //             'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                      //       ),
                      //     );
                    },
                  );
                },
                //   },
                // ),
              );
            },
          ),
          30.hb,
        ],
      ),
      // body: ,
    );
  },
);
  }
}
