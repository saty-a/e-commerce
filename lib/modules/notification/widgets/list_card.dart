import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/models/notification.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';

class ListCard extends StatelessWidget {
  final NotificationModel notification;
  const ListCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryLight,
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: SvgPicture.asset(
              notification.icon!,
              color: AppColors.primary,
            ),
          ),
        ),
        //const Spacer(),
        20.wb,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notification.notificationText!, style: Styles.tsR18.copyWith(color: AppColors.grey900)),
              4.hb,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.watch_later_outlined, color: AppColors.grey600, size: 16),
                  10.wb,
                  Text( notification.time!, style: Styles.tsR14.copyWith(color: AppColors.grey600),)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
