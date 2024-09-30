import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/social/activities.graphql.dart';
import 'activity_base_card.dart';

class MessageActivityCard extends StatelessWidget {
  const MessageActivityCard({super.key, required this.activity});

  final Query$GetActivities$Page$activities$$MessageActivity activity;

  @override
  Widget build(BuildContext context) {
    return ActivityBaseCard(
      id: activity.id,
      avatarUrl: activity.messenger?.avatar?.medium,
      userId: activity.messenger?.id ?? 0,
      userName: activity.messenger?.name,
      receiverAvatarUrl: activity.recipient?.avatar?.medium,
      receiverUserName: activity.recipient?.name,
      likeCount: activity.likeCount,
      isLiked: activity.isLiked ?? false,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      type: Fragment$MessageActivity,
      child: Text(
        activity.message!,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
