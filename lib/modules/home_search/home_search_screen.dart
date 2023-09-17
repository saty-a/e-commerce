import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/home_search/cubit/home_search_cubit.dart';
import 'package:ecommerce_app/modules/home_search/widgets/empty_home_search.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/dividers/app_divider.dart';
import 'package:ecommerce_app/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 110,
        flexibleSpace: BlocBuilder<HomeSearchCubit, HomeSearchState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                  child: CustomTextField(
                    controller: context.read<HomeSearchCubit>().searchController,
                    autoFocus: true,
                    filledColor: AppColors.white,
                    prefixIcon: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        child: SvgPicture.asset(
                          Images.icBackArrow,
                        ),
                      ),
                    ),
                    hintText: AppStrings.search,
                    onChanged: (value) {
                      context.read<HomeSearchCubit>().showClearIcon();
                    },
                    onSubmit: (value) {
                      context.read<HomeSearchCubit>().onSearchSubmit();
                    },
                    suffixIcon: state.showClearIcon
                        ? GestureDetector(
                          onTap: () {
                            context.read<HomeSearchCubit>().onClearTap();
                          },
                          child: const Icon(
                              Icons.clear,
                              color: AppColors.grey700,
                            ),
                        )
                        : const SizedBox(),
                  ),
                ),
              ),
            );
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
      body: BlocBuilder<HomeSearchCubit, HomeSearchState>(
        builder: (context, state) {
          return state.showEmptyState
              ? const EmptyHomeSearch()
              : ListView(
                  children: [
                    20.hb,
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          color: AppColors.grey500,
                        ),
                        13.wb,
                        Text(
                          'Recent Search',
                          style:
                              Styles.tsSb18.copyWith(color: AppColors.grey900),
                        ),
                      ],
                    ).hp(23),
                    30.hb,
                    SizedBox(
                      height: 30,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: AppColors.grey500,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 16,
                                color: AppColors.grey500,
                              ),
                              6.wb,
                              Text(
                                'Sugar',
                                style: Styles.tsSb12
                                    .copyWith(color: AppColors.grey700),
                              ),
                            ],
                          ).sp(10, 6),
                        ),
                        separatorBuilder: (_, index) => 10.wb,
                        itemCount: 3,
                      ).hp(23),
                    ),
                    30.hb,
                    const AppDivider(
                      height: 4,
                    ),
                  ],
                );
        },
      ),
    );
  }
}
