import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_base_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../utils/navigation_helper.dart';
import 'notification_image.dart';

class ActivityLikeNotificationCard extends StatelessWidget {
  const ActivityLikeNotificationCard({super.key, required this.notification});

  final Fragment$ActivityLikeNotification notification;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headlineSmall;

    return NotificationBaseCard(
      createdAt: notification.createdAt ?? 0,
      onPressed: () {
        context.push(
          '${RouteConstants.activity}?id=${notification.activityId}',
        );
      },
      child: Row(
        children: [
          GestureDetector(
            onTap: () => NavigationHelper.goToProfileScreen(
              context: context,
              userId: notification.user?.id ?? 0,
            ),
            child: NotificationImage(
              url: notification.user?.avatar?.medium ?? '',
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                text: '',
                children: [
                  TextSpan(
                    style: textStyle?.copyWith(fontFamily: 'Roboto-Bold'),
                    text: notification.user?.name ?? 'Unknown',
                  ),
                  TextSpan(
                    text: notification.context ?? ' liked your activity.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
