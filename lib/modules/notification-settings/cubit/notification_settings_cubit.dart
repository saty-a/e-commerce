import 'package:ecommerce_app/data/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'package:ecommerce_app/modules/notification-settings/cubit/notification_settings_state.dart';

class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  NotificationSettingsCubit() : super(NotificationSettingsState(
    notificationsEnabled: AppStrings.notificationTypeTabs.map((e) =>
        List.generate(AppStrings.notificationCategories.length, (_) => false)
    ).toList(),
  ),
  );

  void setCategoryEnabledForType(int typeIndex, int categoryIndex, bool isEnabled) {
    var stateList = state.notificationsEnabled;
    stateList[typeIndex][categoryIndex] = isEnabled;
    emit(NotificationSettingsState(notificationsEnabled: stateList));
  }

  @override
  void onChange(Change<NotificationSettingsState> change) {
    super.onChange(change);
    debugPrint("State changed ${change.hashCode}");
  }
}