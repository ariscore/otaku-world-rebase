import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_base_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import 'notification_image.dart';

class ThreadCommentReplyNotificationCard extends StatelessWidget {
  const ThreadCommentReplyNotificationCard({super.key, required this.notification});

  final Fragment$ThreadCommentReplyNotification notification;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme
        .of(context)
        .textTheme
        .headlineSmall;

    return NotificationBaseCard(
      createdAt: notification.createdAt ?? 0,
      onPressed: () {
        log('Card clicked');
      },
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              log('Image clicked');
            },
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
                    text: notification.context ?? ' replied to your forum comment',
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
