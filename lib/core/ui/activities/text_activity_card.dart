import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/activities/activity_base_card.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activities.graphql.dart';

class TextActivityCard extends StatelessWidget {
  const TextActivityCard({super.key, required this.activity});

  final Query$GetActivities$Page$activities$$TextActivity activity;

  @override
  Widget build(BuildContext context) {
    if (activity.text == null) return const SizedBox();

    return ActivityBaseCard(
      id: activity.id,
      avatarUrl: activity.user?.avatar?.medium,
      userName: activity.user?.name,
      likeCount: activity.likeCount,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      // child: Text(
      //   activity.text!,
      //   style: Theme.of(context).textTheme.headlineSmall,
      // ),
      child: Markdown(
        data: activity.text!,
      ),
    );
  }
}
