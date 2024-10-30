import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_base_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_image.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class MediaDeletionNotificationCard extends StatelessWidget {
  const MediaDeletionNotificationCard({super.key, required this.notification});

  final Fragment$MediaDeletionNotification notification;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headlineSmall;
    log('Context: ${notification.context}');
    return NotificationBaseCard(
      createdAt: notification.createdAt ?? 0,
      onPressed: () {},
      child: Row(
        children: [
          const NotificationImage(
            url: '',
            userImage: false,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  TextSpan(
                    text: notification.deletedMediaTitle,
                    style: textStyle?.copyWith(fontFamily: 'Roboto-Bold'),
                  ),
                  TextSpan(
                    text: notification.context ??
                        ' has been deleted from the site',
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
