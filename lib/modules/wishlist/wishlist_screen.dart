import 'package:ecommerce/modules/wishlist/widgets/empty_wishlist.dart';
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/cards/product_card.dart';
import '../home/cubit/home_cubit.dart';
import 'cubit/wishlist_cubit.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<WishlistCubit, WishlistState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Wishlist'),
                state.wishlistProductList.isEmpty
                    ? const SizedBox()
                    : Text(
                        state.wishlistProductList.length == 1
                            ? '${state.wishlistProductList.length} item'
                            : '${state.wishlistProductList.length} items',
                        style: Styles.tsR14.copyWith(color: AppColors.grey900),
                      ),
              ],
            );
          },
        ),
        actions: [
          BlocBuilder<WishlistCubit, WishlistState>(
            builder: (context, state) => state.wishlistProductList.isEmpty
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      context.read<WishlistCubit>().onClearAllTap();
                      context.read<HomeCubit>().onWishlistClearAllTap();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: const BoxDecoration(
                          color: AppColors.primary200,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Text(
                          'Clear All',
                          style:
                              Styles.tsSb14.copyWith(color: AppColors.primary),
                        ),
                      ),
                    ),
                  ),
          ).sp(20, 16)
        ],
      ),
      body: BlocBuilder<WishlistCubit, WishlistState>(
        builder: (BuildContext context, state) {
          return state.wishlistProductList.isEmpty
              ? const EmptyWishlist()
              : GridView.builder(
                  shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 198 / 322,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 30,
                  ),
                  itemCount: state.wishlistProductList.length,
                  itemBuilder: (_, index) {
                    return ProductCard(
                      showClearIcon: true,
                      showFavouriteIcon: true,
                      product: state.wishlistProductList[index],
                      onClearIconTap: () {
                        context.read<WishlistCubit>().onClearTap(index);
                        context.read<HomeCubit>().onWishlistTap(
                            state.wishlistProductList[index].id!);
                      },
                      //isSelected: state.productList[index].favourite,
                      // onWishlistTap: () {
                      //   context.read<HomeCubit>().onWishlistTap(index);
                      //   context.read<WishlistCubit>().addWishlistProduct(state.productList[index]);
                      // },
                    );
                  },
                  //   },
                  // ),
                );
        },
      ),
    );
  }
}
