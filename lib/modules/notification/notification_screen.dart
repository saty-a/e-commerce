import 'package:ecommerce_app/data/values/strings.dart';
import 'package:ecommerce_app/modules/notification/cubit/notification_cubit.dart';
import 'package:ecommerce_app/modules/notification/widgets/list_card.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 24,
          ),
          child: Text(AppStrings.notification),
        ),
      ),
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.notificationList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: ListCard(notification: state.notificationList[index],),
              );
            },
            separatorBuilder: (_, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(height: 1, color: AppColors.dividerColor),
            ),
          );
        },
      ),
    );
  }
}
