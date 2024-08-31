import 'package:flutter/material.dart';

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
      userName: activity.messenger?.name,
      receiverAvatarUrl: activity.recipient?.avatar?.medium,
      receiverUserName: activity.recipient?.name,
      // receiverUserName: 'sldjfdl'*5,
      likeCount: activity.likeCount,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      child: Text(
        activity.message!,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
