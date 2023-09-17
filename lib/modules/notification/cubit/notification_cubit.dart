
import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/data/values/images.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/notification.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationState.initial());

  void addNotifications() {
    for (int i = 0; i <= 15; i++) {
      state.notificationList.add(
        NotificationModel(
          icon: Images.icNotification,
          notificationText: 'Order #113355 is delivered at 12:22 pm by',
          time: '1 hour ago',
        )
      );
    }
  }
}
