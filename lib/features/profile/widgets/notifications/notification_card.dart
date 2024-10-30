import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_like_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_mention_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_message_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_reply_like_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_reply_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/activity_reply_subscribed_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/airing_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/following_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/media_addition_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/media_data_change_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/media_deletion_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/media_merge_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/thread_comment_like_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/thread_comment_mention_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/thread_comment_reply_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/thread_like_notification_card.dart';
import 'package:otaku_world/features/profile/widgets/notifications/thread_subscribed_notification_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final dynamic notification;

  @override
  Widget build(BuildContext context) {
    if (notification is Fragment$AiringNotification) {
      log('Building airing notification');
      return AiringNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityLikeNotification) {
      return ActivityLikeNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityMentionNotification) {
      return ActivityMentionNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityMessageNotification) {
      return ActivityMessageNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityReplyNotification) {
      return ActivityReplyNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityReplyLikeNotification) {
      return ActivityReplyLikeNotificationCard(notification: notification);
    } else if (notification is Fragment$ActivityReplySubscribedNotification) {
      return ActivityReplySubscribedNotificationCard(
        notification: notification,
      );
    } else if (notification is Fragment$FollowingNotification) {
      return FollowingNotificationCard(notification: notification);
    } else if (notification is Fragment$ThreadCommentLikeNotification) {
      return ThreadCommentLikeNotificationCard(notification: notification);
    } else if (notification is Fragment$ThreadCommentMentionNotification) {
      return ThreadCommentMentionNotificationCard(notification: notification);
    } else if (notification is Fragment$ThreadCommentReplyNotification) {
      return ThreadCommentReplyNotificationCard(notification: notification);
    } else if (notification is Fragment$ThreadLikeNotification) {
      return ThreadLikeNotificationCard(notification: notification);
    } else if (notification is Fragment$ThreadCommentSubscribedNotification) {
      return ThreadSubscribedNotificationCard(notification: notification);
    } else if (notification is Fragment$RelatedMediaAdditionNotification) {
      return MediaAdditionNotificationCard(notification: notification);
    } else if (notification is Fragment$MediaDataChangeNotification) {
      return MediaDataChangeNotificationCard(notification: notification);
    } else if (notification is Fragment$MediaDeletionNotification) {
      return MediaDeletionNotificationCard(notification: notification);
    } else if (notification is Fragment$MediaMergeNotification) {
      return MediaMergeNotificationCard(notification: notification);
    }

    return const SizedBox();
  }
}
