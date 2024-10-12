import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/activities/activity_actions.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_activities.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../../theme/colors.dart';
import '../../../../../theme/decorations.dart';
import '../../../../../utils/formatting_utils.dart';
import '../../../../../utils/ui_utils.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key,
    required this.activity,
  });

  final Query$MediaActivityQuery$Page$activities$$ListActivity activity;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isSubscribed = false;

  @override
  void initState() {
    isSubscribed = widget.activity.isSubscribed ?? false;
    super.initState();
  }

  final TextStyle userNameTextStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  final TextStyle progressOfMediaActivity = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: Decorations.simpleContainer,
      height: 140,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReviewProfilePhoto(
                profilePicUrl:
                    widget.activity.user?.avatar?.medium ?? UiConstants.noImageUrl,
                radius: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.activity.user?.name ?? 'Unknown',
                    style: userNameTextStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      '${widget.activity.status?.checkIfNullReturnsEmpty().toCapitalized() ?? ''} ${widget.activity.progress ?? ''}',
                      style: progressOfMediaActivity),
                ],
              )
            ],
          ),
          ActivityActions(
            activityId: widget.activity.id,
            userId: widget.activity.user?.id ?? 0,
            isLiked: widget.activity.isLiked ?? false,
            likeCount: widget.activity.likeCount,
            replyCount: widget.activity.replyCount,
            type: Fragment$ListActivity,
            isSubscribed: isSubscribed,
            onToggleSubscription: () => _toggleSubscription(context),
            onDelete: () {},
          ),
          Text(
            FormattingUtils.formatUnixTimestamp(widget.activity.createdAt),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  color: AppColors.white.withOpacity(0.8),
                ),
          ),
        ],
      ),
    );
  }

  void _toggleSubscription(BuildContext context) async {
    final client = context.read<GraphqlClientCubit>().getClient();
    if (client != null) {
      final bloc = context.read<SocialBloc>();

      bloc
          .toggleActivitySubscription(
        client,
        activityId: widget.activity.id,
        subscribe: isSubscribed,
      )
          .then(
            (result) {
          if (result == null) {
            setState(() {
              isSubscribed = !isSubscribed;
              UIUtils.showSnackBar(
                context,
                ActivityConstants.subscriptionSuccess(isSubscribed),
              );
            });
          } else {
            UIUtils.showSnackBar(context, result);
          }
        },
      );
    } else {
      UIUtils.showSnackBar(context, ActivityConstants.clientError);
    }
  }
}
