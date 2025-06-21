import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/profile/user_activities_bloc/user_activities_bloc.dart';
import 'package:otaku_world/bloc/social/activities/activities_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/activities/activity_base_card.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class TextActivityCard extends StatelessWidget {
  const TextActivityCard({
    super.key,
    required this.activity,
    this.isProfile = false,
    required this.bloc,
  });

  final Fragment$TextActivity activity;
  final bool isProfile;
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    if (activity.text == null) return const SizedBox();

    return ActivityBaseCard(
      id: activity.id,
      avatarUrl: activity.user?.avatar?.medium,
      userId: activity.user?.id ?? 0,
      userName: activity.user?.name,
      likeCount: activity.likeCount,
      isLiked: activity.isLiked ?? false,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      type: Fragment$TextActivity,
      isSubscribed: activity.isSubscribed ?? false,
      isProfile: isProfile,
      bloc: bloc,
      onEdit: () {
        context.push(
          '${RouteConstants.editTextActivity}?id=${activity.id}',
          extra: {
            'text': activity.text,
            'on_posted': (Fragment$TextActivity activity) {
              if (bloc is ActivitiesBloc) {
                (bloc as ActivitiesBloc).editActivity(
                  activity,
                  type: Enum$ActivityType.TEXT,
                );
              } else if (bloc is UserActivitiesBloc) {
                (bloc as UserActivitiesBloc).editActivity(
                  activity,
                  type: Enum$ActivityType.TEXT,
                );
              }
            },
          },
        );
      },
      // child: Text(
      //   activity.text!,
      //   style: Theme.of(context).textTheme.headlineSmall,
      // ),
      // child: MarkdownWidget(
      //   data: activity.text!,
      // ),
      child: MyMarkdownWidgetV2(data: activity.text!),
    );
  }
}
