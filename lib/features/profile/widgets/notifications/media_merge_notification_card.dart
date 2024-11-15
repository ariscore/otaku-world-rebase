import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_base_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/notification_image.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../config/router/router_constants.dart';

class MediaMergeNotificationCard extends StatelessWidget {
  const MediaMergeNotificationCard({super.key, required this.notification});

  final Fragment$MediaMergeNotification notification;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme
        .of(context)
        .textTheme
        .headlineSmall;
    log('Context: ${notification.context}');
    return NotificationBaseCard(
      createdAt: notification.createdAt ?? 0,
      onPressed: () {
        context.push(
          '${RouteConstants.mediaDetail}?id=${notification.media?.id}',
        );
      },
      child: Row(
        children: [
          NotificationImage(
            url: notification.media?.coverImage?.medium ?? '',
            userImage: false,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  TextSpan(
                    text: notification.media?.title?.userPreferred ?? '',
                    style: textStyle?.copyWith(fontFamily: 'Roboto-Bold'),
                  ),
                  const TextSpan(
                    text: ' and ',
                  ),
                  TextSpan(
                    text: '${notification.deletedMediaTitles?.join(', ')}'
                  ),
                  TextSpan(
                    text: notification.context ?? ' have been merged into a single entry',
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
