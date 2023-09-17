import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/values/images.dart';

class AppCarousel extends StatefulWidget {
  const AppCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          // carouselController: _controller,
          itemCount: 5,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            autoPlay: false,
            viewportFraction: 0.7,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) =>
              Container(
            height: 237.h,
            width: 237.w,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary100,
            ),
            child: Center(
              child: Image.asset(
                Images.iphone,
                height: 188.h,
                width: 160.w,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => _currentIndex == index
                ? Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey900,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      "${_currentIndex + 1}/5",
                      style: Styles.tsSb10.copyWith(color: AppColors.white),
                    ),
                  )
                : Container(
                    decoration: const BoxDecoration(
                      color: AppColors.grey400,
                      shape: BoxShape.circle,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    height: 9,
                    width: 9,
                  ),
          ),
        )
      ],
    );
  }
}
