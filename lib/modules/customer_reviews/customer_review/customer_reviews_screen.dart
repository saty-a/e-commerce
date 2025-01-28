import 'dart:io';
import 'package:ecommerce/modules/customer_reviews/customer_review/cubit/customer_review_cubit.dart';
import 'package:ecommerce/modules/customer_reviews/customer_review/widgets/image_preview.dart';
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/buttons/skip_for_now_button.dart';
import '../../../widgets/dividers/app_divider.dart';
import '../../../widgets/rating/ratings_bar.dart';
import '../add_review/add_review_screen.dart';

class CustomerReviewsScreen extends StatelessWidget {
  const CustomerReviewsScreen({Key? key}) : super(key: key);

  /// List Customer Reviews

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer reviews"),
        actions: [
          Row(
            children: [
              SkipForNow(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.addReview);
                },
                text: "Add Review",
              ),
            ],
          ),
          20.wb,
        ],
      ),
      body: BlocBuilder<CustomerReviewCubit, CustomerReviewState>(
        builder: (context, state) {
          debugPrint("list : ${state.customerReviewList.length}");
          return ListView.separated(
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 26,
                                width: 26,
                                decoration: const BoxDecoration(
                                    color: AppColors.primary100,
                                    shape: BoxShape.circle),
                                clipBehavior: Clip.hardEdge,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                ),
                              ),
                              10.wb,
                              Text(
                                "${state.customerReviewList[index].reviewerName}",
                                style: Styles.tsSb18
                                    .copyWith(color: AppColors.grey900),
                              )
                            ],
                          ),
                          Text(
                            "Today, 12:30 pm",
                            style:
                                Styles.tsR14.copyWith(color: AppColors.grey500),
                          ),
                        ],
                      ),
                      12.hb,
                      StarRating(
                        rating: state.customerReviewList[index].rating!,
                        size: 16,
                      ),
                      18.hb,
                      10.hb,
                      Text(
                        "${state.customerReviewList[index].reviewText}",
                        style: Styles.tsR16.copyWith(color: AppColors.grey900),
                      ),
                      10.hb,
                      state.customerReviewList[index].mediaUrls!.isNotEmpty
                          ? SizedBox(
                              height: 150.h,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.customerReviewList[index]
                                      .mediaUrls!.length,
                                  separatorBuilder: (_, index) => 20.wb,
                                  itemBuilder: (BuildContext context, i) {
                                    debugPrint(
                                        "length: ${state.customerReviewList[index].mediaUrls!.length}");
                                    return GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ImagePreview(
                                                    imagePath: state
                                                        .customerReviewList[
                                                            index]
                                                        .mediaUrls![i]
                                                        .path,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: state.customerReviewList[index]
                                                .mediaUrls![i].name
                                                .contains("mp4") ?
                                            SizedBox(
                                              height: 120.h,
                                              width: 120.w,
                                              child: VideoApp(
                                                  fileName: File(state
                                                      .customerReviewList[index]
                                                      .mediaUrls![i]
                                                      .path)),
                                            ) :
                                            SizedBox(
                                              height: 120.h,
                                              width: 120.w,
                                              child: Image.file(
                                                File(state
                                                    .customerReviewList[index]
                                                    .mediaUrls![i]
                                                    .path),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          );
                                  }),
                            )
                          : const SizedBox(),
                    ],
                  ),
              separatorBuilder: (BuildContext context, int index) =>
                  const AppDivider(height: 0.5).vp(16),
              itemCount: state.customerReviewList.length);
        },
      ),
    );
  }
}
