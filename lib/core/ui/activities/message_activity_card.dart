import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/activities/activities_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/profile/user_activities_bloc/user_activities_bloc.dart';
import 'activity_base_card.dart';

class MessageActivityCard extends StatelessWidget {
  const MessageActivityCard({
    super.key,
    required this.activity,
    required this.bloc,
    this.isProfile = false,
  });

  final Fragment$MessageActivity activity;
  final bool isProfile;
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    bool isCurrentUserMessage = false;
    final state = context.read<ViewerBloc>().state;
    if (state is ViewerLoaded) {
      isCurrentUserMessage = activity.messenger?.id == state.user.id ||
          activity.recipient?.id == state.user.id;
    } else if (state is! ViewerLoading) {
      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        context.read<ViewerBloc>().add(LoadViewer(client));
      }
    }

    return ActivityBaseCard(
      id: activity.id,
      avatarUrl: activity.messenger?.avatar?.medium,
      activitySiteUrl: activity.siteUrl,
      userId: activity.messenger?.id ?? 0,
      userName: activity.messenger?.name,
      receiverAvatarUrl: activity.recipient?.avatar?.medium,
      receiverUserName: activity.recipient?.name,
      receiverUserId: activity.recipient?.id,
      likeCount: activity.likeCount,
      isLiked: activity.isLiked ?? false,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      type: Fragment$MessageActivity,
      isCurrentUserMessage: isCurrentUserMessage,
      isSubscribed: activity.isSubscribed ?? false,
      isProfile: isProfile,
      isPrivate: activity.isPrivate ?? false,
      bloc: bloc,
      onEdit: () {
        context.push(RouteConstants.editMessageActivity, extra: {
          'activity': activity,
          'on_messaged': (Fragment$MessageActivity activity) {
            if (bloc is ActivitiesBloc) {
              (bloc as ActivitiesBloc).editActivity(
                activity,
                type: Enum$ActivityType.MESSAGE,
              );
            } else if (bloc is UserActivitiesBloc) {
              (bloc as UserActivitiesBloc).editActivity(
                activity,
                type: Enum$ActivityType.MESSAGE,
              );
            }
            // final bloc = context.read<ActivitiesBloc>();
            // bloc.editActivity(activity, type: Enum$ActivityType.MESSAGE);
          },
        });
      },
      // child: Text(
      //   activity.message!,
      //   style: Theme.of(context).textTheme.headlineSmall,
      // ),
      // child: MarkdownWidget(data: activity.message!),
      child: MyMarkdownWidgetV2(data: activity.message!),
    );
  }
}
