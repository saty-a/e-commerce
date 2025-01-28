import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import 'cubit/notification_settings_cubit.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationSettingsCubit, NotificationSettingsState>(
      builder: (context, state) {
        debugPrint("Scaffold rebuilt");
        return Scaffold(
          backgroundColor: AppColors.grey100,
          appBar: AppBar(
            title: Text(AppStrings.notification, style: Styles.tsSb20,),
          ),
          body: DefaultTabController(
            length: state.notificationsEnabled.length,
            child: Column(
              children: [
                ColoredBox(
                  color: Colors.white,
                  child: TabBar(
                    labelStyle: Styles.tsSb18,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.grey900,
                    indicatorColor: AppColors.primary,
                    tabs: AppStrings.notificationTypeTabs.map((e) => Tab(text: e)).toList(),
                  ),
                ),
                4.hb,
                Expanded(
                  child: ColoredBox(
                    color: Colors.white,
                    child: TabBarView(
                      children: List.generate(AppStrings.notificationTypeTabs.length, (index) =>
                          notificationCategoriesList(state.notificationsEnabled[index],
                                (categoryIndex, isEnabled) {
                              debugPrint("Type: $index");
                              debugPrint("category: $categoryIndex");
                              context.read<NotificationSettingsCubit>().setCategoryEnabledForType(index, categoryIndex, isEnabled);
                            },
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget notificationCategoriesList(List<bool> categoriesEnabledStateList,
      void Function(int, bool) toggleEnabled,
      ) {
    var categories = AppStrings.notificationCategories.entries.toList();
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(categories[index].key, style: Styles.tsSb18.copyWith(color: AppColors.grey900),),
                4.hb,
                Text(categories[index].value, style: Styles.tsR12.copyWith(color: AppColors.grey800),),
              ],
            )),
            Switch(
              value: categoriesEnabledStateList[index],
              activeColor: AppColors.primary,
              activeTrackColor: AppColors.primary200,
              onChanged: (val) => toggleEnabled(index, val),
            ),
          ],
        );
      },
      separatorBuilder: (_, __) => const Divider(color: AppColors.grey300,),
      itemCount: categories.length,
    );
  }
}