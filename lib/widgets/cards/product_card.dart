import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/models/wishlist_product.dart';
import '../../data/values/images.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class ProductCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? onWishlistTap;
  final bool showClearIcon;
  final bool showFavouriteIcon;
  final VoidCallback? onClearIconTap;
  final VoidCallback? onProductTap;

  const ProductCard({
    Key? key,
    this.width,
    this.onWishlistTap,
    this.product,
    this.showClearIcon = false,
    this.onClearIconTap,
    this.onProductTap,
    this.showFavouriteIcon = false,
  }) : super(key: key);
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onProductTap,
      //     () {
      //   Navigator.of(context).pushNamed(Routes.productDetails);
      // },
      child: Stack(
        children: [
          Container(
            width: width,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 3),
                      blurRadius: 4.4,
                      color: AppColors.black.withOpacity(0.1)),
                ],
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 20),
                        decoration: BoxDecoration(
                          color: AppColors.primary100,
                          borderRadius: BorderRadius.circular(4),
                          // image: DecorationImage(
                          //     image: NetworkImage(product!.imageUrl ?? ''),
                          //     //'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGlwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                          //     fit: BoxFit.cover),
                        ),
                        child: Image.asset(Images.iphone),
                      ),
                      showClearIcon
                          ? Positioned(
                              top: 3,
                              right: 4,
                              child: GestureDetector(
                                onTap: onClearIconTap,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    color: AppColors.grey200,
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    Images.icClose,
                                    color: AppColors.grey900,
                                    height: 8,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                4.hb,
                Row(
                  children: [
                    Text(
                      product?.itemCompany ?? '',
                      style: Styles.tsR10.copyWith(
                        color: AppColors.grey700,
                      ),
                    ),
                    const Spacer(),
                    showFavouriteIcon ?
                    GestureDetector(
                      onTap: onWishlistTap,
                      child: Container(
                        height: 24,
                        width: 24,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: !product!.favourite
                                ? AppColors.primary200
                                : AppColors.error100,
                            width: 0.34,
                          ),
                          color: !product!.favourite
                              ? AppColors.primary100
                              : AppColors.error100,
                          shape: BoxShape.circle,
                        ),
                        child: !product!.favourite
                            ? SvgPicture.asset(Images.icHeart)
                            : SvgPicture.asset(
                                Images.icRedHeart,
                              ),
                      ),
                    ) : const SizedBox(),
                  ],
                ),
                4.hb,
                Text(
                  product?.itemName ?? '',
                  style: Styles.tsR14.copyWith(
                    color: AppColors.grey1000,
                  ),
                ),
                8.hb,
                // Row(
                //   children: List.generate(
                //       5,
                //       (index) => SvgPicture.asset(
                //           index < 3 ? Images.icStarFill : Images.icStar)),
                // ),
                //const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      product?.originalPrice ?? '',
                      style: Styles.tsSb18.copyWith(
                        color: AppColors.grey1000,
                      ),
                    ),
                    4.wb,
                    Text(
                      product?.price ?? '',
                      style: Styles.tsR18.copyWith(
                          color: AppColors.grey700,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 1),
                    ),
                    //4.wb,
                    // Text(
                    //   "₹8,888",
                    //   style: Styles.tsSb18.copyWith(
                    //     color: AppColors.grey1000,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 8),
                // CommonButton(
                //   buttonText: "Add to Cart",
                //   onPressed: () {},
                //   textStyle: Styles.tsSb14.copyWith(
                //     color: AppColors.white,
                //   ),
                // )
              ],
            ),
          ),
          Positioned(
            top: 7,
            child: SvgPicture.asset(Images.icOffer),
          ),
          Positioned(
            top: 9,
            left: 2,
            child: Column(
              children: [
                Text(
                  "20 %",
                  style: Styles.tsM10.copyWith(
                    color: AppColors.white,
                    fontSize: 8,
                  ),
                ),
                Text(
                  "Off",
                  style: Styles.tsM10.copyWith(
                    color: AppColors.white,
                    fontSize: 6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
