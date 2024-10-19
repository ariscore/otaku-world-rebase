import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/social/activities.graphql.dart';
import 'activity_base_card.dart';

class MessageActivityCard extends StatelessWidget {
  const MessageActivityCard({super.key, required this.activity});

  final Query$GetActivities$Page$activities$$MessageActivity activity;

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
      userId: activity.messenger?.id ?? 0,
      userName: activity.messenger?.name,
      receiverAvatarUrl: activity.recipient?.avatar?.medium,
      receiverUserName: activity.recipient?.name,
      likeCount: activity.likeCount,
      isLiked: activity.isLiked ?? false,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      type: Fragment$MessageActivity,
      isCurrentUserMessage: isCurrentUserMessage,
      isSubscribed: activity.isSubscribed ?? false,
      onEdit: () {

      },
      child: Text(
        activity.message!,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
