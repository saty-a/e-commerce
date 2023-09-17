
part of 'notification_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class NotificationState with _$NotificationState {
  factory NotificationState({
    @Default([]) List<NotificationModel> notificationList,
  }) = _NotificationState;

  factory NotificationState.initial() => NotificationState(notificationList: []);
}
